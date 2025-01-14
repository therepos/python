## Bulk Renaming
- Copy filenames in directory: `dir /b`
- Generate file rename list in excel. 
- Execute multi-lines commands: `ren “input.mp4” “output.mp4”`
- Get directory trees: `os.walk`
- Get contents of directory: `os.scandir`
- Comparing paths you already know: `fnmatch.fnmatch`
- Searching the filesystem for this paths: `glob.glob`

## Scripts

CLI functions:

|File|Features|
|:---|:---|
|[**checklinks.py**]|Checks the status of a hyperlink.|
|[**extractmeta.py**]|Extracts duration of video files.|
|[**subfoldersize.py**]|Exports individual subfolder size to a csv file.|
|[**getallurls.py**]|Scrapes all url links from a target page.|
|[**movefiles.py**]|Removes all subdirectories and move all files to the root directory for multiple root folders.|
|[**printlist.py**]|Prints list of files in the current directory.|
|[**renamecor.py**]|Bulk renames downloaded Coursera course files with structured prefixes for easy organisation.|
|[**renamelin.py**]|Bulk renames downloaded LinkedIn course files with structured prefixes for easy organisation.|
|[**renameprefix.py**]|Bulk prefixes a list of files that are missing a certain pattern of prefixes.|
|[**renameytvid.py**]|Bulk renames downloaded Youtube files.|
|[**webscrapy.py**]|Scrapes LinkedIn course author, level and category.|

Download the .py files into the python path directory or a preferred download directory set to path.

[**checklinks.py**]: https://github.com/ry4nyeo/python/blob/main/files/checklinks.py
[**extractmeta.py**]: https://github.com/ry4nyeo/python/blob/main/files/extractmeta.py
[**subfoldersize.py**]: https://github.com/ry4nyeo/python/blob/main/files/subfoldersize.py
[**getallurls.py**]: https://github.com/ry4nyeo/python/blob/main/files/getallurls.py
[**movefiles.py**]: https://github.com/ry4nyeo/python/blob/main/files/movefiles.py
[**printlist.py**]: https://github.com/ry4nyeo/python/blob/main/files/printlist.py
[**renamecor.py**]: https://github.com/ry4nyeo/python/blob/main/files/renamecor.py
[**renamelin.py**]: https://github.com/ry4nyeo/python/blob/main/files/renamelin.py
[**renameprefix.py**]: https://github.com/ry4nyeo/python/blob/main/files/renameprefix.py
[**renameytvid.py**]: https://github.com/ry4nyeo/python/blob/main/files/renameytvid.py
[**webscrapy.py**]: https://github.com/ry4nyeo/python/blob/main/files/webscrapy.py

## References
- [Truncate unknown file names](https://stackoverflow.com/questions/28614999/python-truncate-unknown-file-names/28615099)
- [Add ID to filename before extension](https://stackoverflow.com/questions/37487758/how-to-add-an-id-to-filename-before-extension)
- [Get current directory name.](https://stackoverflow.com/questions/33372054/get-folder-name-of-the-file-in-python)
- [PDF preprocessing](https://towardsdatascience.com/pdf-preprocessing-with-python-19829752af9f)
- [Regular Expression](https://towardsdatascience.com/a-simple-and-intuitive-guide-to-regular-expressions-404b057b1081)
- [CLI App](https://towardsdatascience.com/a-simple-way-to-create-python-cli-app-1a4492c164b6)
- [How to Publish CLI App](https://towardsdatascience.com/how-to-build-and-publish-command-line-applications-with-python-96065049abc1)
- [Auto-py-to-exe](https://github.com/brentvollebregt/auto-py-to-exe)