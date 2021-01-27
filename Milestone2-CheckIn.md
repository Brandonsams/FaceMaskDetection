Topics:

# Any surprises from your domain from these data?

As far as the dataset goes, I decided I would try to start with the one found [here](https://www.kaggle.com/andrewmvd/face-mask-detection). I was already aware that this dataset contained not only pictures of people wearing masks and not wearing masks, but pictures of people wearing masks incorrectly. However, I was surprised to see that each image has an associated xml file that contains information about each face in the picture. It even describes a bounding box for each face, so that no facial recognition algorithm needs to be used to find faces in an image. (Although if all goes according to plan, that would be a good thing to do.

# The dataset is what you thought it was?

This dataset is even more well labeled than I was aware of. There are some more properties associated with each face in the images.

	<object>
        <name>without_mask</name>
        <pose>Unspecified</pose>
        <truncated>0</truncated>
        <occluded>0</occluded>
        <difficult>0</difficult>
        <bndbox>
            <xmin>325</xmin>
            <ymin>90</ymin>
            <xmax>360</xmax>
            <ymax>141</ymax>
        </bndbox>
    </object>
    
I am not yet aware how I will use these additional properties, if at all.

# Have you had to adjust your approach or research questions?

When I started this project, I thought I would start with a larger dataset with only two classes, and then move onto this Kaggle Dataset with three classes. However, due to the well-annotated nature of this dataset, I am starting with this dataset.

As far as a research question, I am finding that I need a more well-defined question. That is, this project started out with a curiosity for if a mask detection algorithm could be made. (Of which, the answer is “yes”.) But perhaps a more open-ended research question like “What sort of challenges solutions exist with creating mask detection algorithm?”

# Is your method working?

So far, I have extracted each one of the faces out of the Kaggle Dataset, and sorted them into categories. So far that method is working. I have also played around with OpenCV, getting used to the library. This really seems like the right approach to take when it comes to image processing. So yes, in this specific case, the method does look like it is working so far.

# What challenges are you having?

So far, finding the right filters and image transformations to apply to the images prior to training and testing is quite the challenge. There are plenty of things that I have tried, and there isn’t a particular thing I have tried that is working incredibly well. Perhaps it would be a good idea to refer to the literature that exists on this subject. (And yes, there actually is plenty of literature on this topic.)

I am also having a hard time using OpenCV to read data from a camera. I have a NVIDIA Jetson Nano with a camera, and there are some tutorials out there about facial recognition. I have been following those tutorials, and been running into errors. I know that this is a problem that I should probably work on once I have a model trained on basic images, but I really want to make this work with a video feed as well. 