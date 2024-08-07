Social Media App
Project Overview
This Flutter application is developed as part of an assignment by NetixSol, designed to mimic a social media app similar to TikTok. It features item listing, searching, viewing capabilities, and multimedia handling.

Getting Started
To get started with Flutter development, refer to the following resources:

Lab: Write your first Flutter app
Cookbook: Useful Flutter samples
Documentation: Flutter Documentation
Project Features
Social Media Functionality: Features similar to TikTok including item listing, searching, and multimedia viewing.
State Management: Uses GetX for efficient state management.
Dependencies: Includes packages such as:
google_fonts: ^6.2.1
flutter_screenutil: ^5.9.3
flutter_svg: ^2.0.10+1
get: ^4.6.6
video_player: ^2.8.6
http: ^1.2.2
lottie: ^3.1.2
UI Customization: Enhanced UI with google_fonts, flutter_screenutil, and flutter_svg.
API Integration: Fetches and displays data from the API endpoint http://95.216.221.251/dev/api/home-posts-test.
Implementation Details
Fetching Data
Data is fetched from the API using the http package. The implementation retrieves various details including post images, videos, user information, and hashtags.

Displaying Data
Fetched data is presented using standard Flutter widgets. The UI is tailored to display post details, including multimedia content and user information.

Known Issues
Image Path Issue:

1: Some image paths provided by the API are incomplete or improperly formatted. For example, the path "65dc53a4e8eca.jpg" does not include a valid URL, resulting in the image failing to load. As a temporary solution, a placeholder message "No image found" is displayed.

2: Currency Representation:
 The currency field occasionally contains inconsistent data types, appearing as either a string or a numeric value. This field is handled dynamically, but it ideally should be consistently a string to align with other data representations, such as "USD". For cases where the currency is "0", "NA" (Not Available) is displayed.

3:Video Description Null Values:
 The API occasionally returns null for video descriptions. In these cases, only the video tags are displayed, omitting the description to avoid showing null values.

4: Flag Image URL Issue:
 The URL for flag images is incorrect or results in an error, such as "assets/media/countries/y2ujmu0p_1693896957_7492.png". An error icon is displayed as a placeholder for missing flag images.

5: Website URL Missing:
Some entries in the API response lack a website URL, leading to the absence of a link in the app. An alert message is displayed to notify users that the website URL is not available.

6:Unavailable Videos:
 Certain videos, such as the 6th video in the list, are not available. An error message is shown to inform users of the missing content.
Conclusion
This project showcases the integration of various Flutter packages and an API to create a feature-rich social media application. The use of GetX for state management ensures efficient and manageable state handling throughout the app. The known issues are addressed with temporary solutions, and further refinements are planned to improve functionality and user experience

Video source => https://drive.google.com/file/d/1CMMlYoHKoBQhPV4XBQJLYn5DW9c84LbL/view?usp=drivesdk.
I give the access on recruitment@streamedinc.com for accessing the video.