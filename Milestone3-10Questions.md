What sort of application do you see this being useful in?

    I think that security cameras could be very useful for helping to make sure that people wear masks, and wear masks correctly in highly controlled environments. In my mind, this includes hospitals for sure, but could include traditional private businesses as well

This isn't exactly facial recognition, but it is treading very close to doing so. Have you considered the ethical implications of using facial recognition in this way?

    I have considered it, yes. I think any project that uses facial recognition in any capacity deserves at least a cursory ethics check. I think that when one considers that no personal data is linked to predicitons, and no predicitons can be linked back to an individual, it protects personal privacy. Additionally, consider the ethical benefits of supporting public health as a whole. 

What sort of challenges did you encounter when cleaning and preparing the data?

    Cropping the images and converting them into the desired vector format was the easy part. Determining what transformations to do on the image was not clear. I know that there is sometimes an edge-detection algorithm used, but it was provind to be difficult to use in this case.

If you needed more input data, how would you go about acquiring that?

    Luckily, this dataset was very well annotated. If I were to take this project further, I belive that creating additional images and annotations would be difficult. I could see an algorithm trained to recognize faces (masked or unmasked) being useful, but I am not sure if face detection algorithms that exist now take masks into account.

Was there anything for this project that you wanted to accomplish, but didn't?

    I wanted to, originally, construct the entire data pipeline, from video feed to face detection to mask prediction. However, due to time constraints, I ended up just using images to train and test the model.

