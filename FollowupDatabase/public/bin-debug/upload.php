<?php
$MAXIMUM_FILESIZE = 1024 * 20000; // 20MB
$fileType = pathinfo($_FILES['Filedata']['name'], PATHINFO_EXTENSION);

if ($_FILES['Filedata']['size'] <= $MAXIMUM_FILESIZE && $fileType == "csv") 
{ 
 move_uploaded_file($_FILES['Filedata']['tmp_name'], "./upload/".$_FILES['Filedata']['name']);
}
?> 