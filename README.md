# Helpful Xcode Templates

This repository contains useful Xcode templates i've created and that you may use freely for you projects. I will add more templates time to time.

## File Templates

The templates in this directory is shown when you create a new file within an Xcode project. You will find these templates inside each subfolder inside the File Templates folder. Each subfolder's name is shown as category when you go to Xcode => New File.

### Installation

1. **Go to Xcode's current user templates folder**: Open `~/Library/Developer/Xcode` and enter the `Templates` folder. If you don't have this folder, create it and enter it. Now enter the `File Templates` folder inside `Templates` folder. Again, if you don't have this folder, create it and enter it. At this point you should be inside `~/Library/Developer/Xcode/Templates/File Templates/`

2. **Create subfolder for the template's category**: Create a subfolder inside this folder with the name of the category under which you want to put the template. You can create a new category or use a name which corresponds to a category already shown in your Xcode => New file. An example of category name (= sub folder name) could be "*Helpful Xcode Templates*" or, if you want to place the template inside the standard "*User Interface*" Xcode category, just call the subfolder "User Interface".

3. **Copy the template**: Copy the `[Template Tame].xctemplate` folder of the template you want to install inside this subfolder.

That's all! Now when you create a new file within your Xcode project by click "New file..." you will see the new Xcode template inside the category you have assigned it.


### Swift UIKit Programmatic View template

This templates creates the boilerplate code for a UIKit view written programmatically in swift, by creating separate methods to setup the view's hiearchy, the view's constraints and to refresh the view. 

You can choose to also include *example code*, which adds some example UI elements, some external configuration parameters for the view, along with example constraints. If you choose to add example code, you can choose to add plain **NSLayoutConstraints**' constraints code, or **Anchorage**'s constraints code (which uses [Anchorage](https://github.com/Rightpoint/Anchorage) as third party library to setup constraints with less verbose code).
If you don't want example code, just choose **None** in the Example code popup.
