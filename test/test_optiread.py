# Assuming you have a function preprocess_image in your main code

from optiread.preprocess_image import preprocess_image

def test_preprocess_image():
    image_path = "OptiRead/test_images/sample_image.jpeg"
    result = preprocess_image(image_path)
    assert result is not None  # Replace this with your expected result

