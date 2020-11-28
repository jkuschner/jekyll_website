---
layout: page
title: JISCTF 2020 Writeup
interests: true
---
This was my first ever CTF challenge, and I only knew I would be participating the day before the event. Nevertheless, it sounded like some fun hacking time with my friends.

In the end, I was able to find 2 flags, both involving the inspection of `.pcapng` files that contain network packets. The first flag I found was aptly named, So Easy. All I had to do was inspect the given `easy.pcapng` file using WireShark. More precisely, I exported all HTTP objects from the file to find that there was a `login.php` file in plain HTML text, so I navigated over to that packed and followed to TCP stream to get the HTML text to find the flag in the username field.

<img src="/images/image-20201121102459292.png" alt="image-20201121102459292" style="zoom:150%;" />

The second challenge I completed was significantly more difficult, but started the same way. I examined the provided `colurfull.pcapng` file using WireShark. After looking through the traffic and finding nothing of value, I then looked to the FTP traffic. There we found that the attacker sent a `files.zip` file to the server.

![image-20201127133403856](/images/image-20201127133403856.png)

I calculated the port to be 256 * 180 + 127 = 46207 and filtered all of the traffic by that port number to find the file that the attacker sent. By following that TCP stream, we found the following zip file:

![image-20201127134712487](/images/image-20201127134712487.png)

Since this starts with "PK" I know that it is a .zip file, so I saved it to my local as raw bytes only to find that it has been encrypted with a password!

![image-20201127140306990](/images/image-20201127140306990.png)

To try to crack this password, I want to get a hash of it, so I can try to look up the original password in a table. As it turns out, I found the password to be "labeba"

![image-20201127140550101](/images/image-20201127140550101.png)

Finally! The file, `secret_data.txt` has been extracted successfully. Surely this will contain the flag.

![image-20201127140923659](/images/image-20201127140923659.png)

What's all this? It surely isn't a flag, but it must be something. There are a lot more lines than this, and they are not all the same set of numbers. What could all of this data mean? Hmm... sets of 3 numbers, several of them repeating, none of them are greater than 255... that's it! They must be pixel data that represents an image. The flag must be close. All I need to do is somehow convert all of this data into an actual image. It's time to put my scripting skills to the test. Luckily, the Python PIL library was made just for this. The `frombytes()` function takes the size of the image, and the image data as raw bytes to create an `Image` object which can easily be converted to a `.png` file. There are 10693 lines of data in the `secret_data.txt` file which factors to $17^2\times 37$, so there are only a few possibilities for the size of the image. Now I need to convert the image data given as ASCII into raw bytes and feed them into the script, trying the different image sizes until we get an image that looks like something useful. The final script looks like this:

![image-20201127142336446](/images/image-20201127142336446.png)

This wonderful script produced the following image:

![image-20201127142414612](/images/image-20201127142414612.png)

Sweet success!!
