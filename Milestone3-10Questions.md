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

Was there any bias in the original dataset?

    When looking back at the original dataset, it seemed that most of the images were from people with Asian descent. So yes there was definitely bias in the dataset. If the model was shown a person of African descent, for example, then it would likely have a hard time, as it had never been shown that data before.

Did you set any confidence thresholds for the prediciton? i.e., the model must be x% confident that an image falls into a category for a prediciton to be made at all?

    No, this model just produces a best guess. So whichever class is the most confident, that is the prediciton.

Why did you use powershell to make the csv file?

    The simple answer is that I am familiar with powershell, after having used it for Windows system administration for years. Its an incredibly powerful scripting language, available on macOS and Linux as well. Highly recommend.

For the "mask_worn_incorrectly" class, what exactly counted as worn incorrectly?

    That is an excellent question. For a mask to be worn correctly, it must cover the mouth, and it must also cover the nose. If either one of those is not taking place, then the mask is worn incorrectly.

Did your model take into account images which have been rotated or augmented in some way?

    While this model did not take into account augmented images, I think that it is safe to say that in most circumstances, a person's face would be unrotated. But yes, that is definitely an assumption.