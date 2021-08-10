# this script is a dumpster fire and was supposed to be a quick two liner, but I'm no quitter
$csv = Import-Csv -Delimiter "," "..\..\brainbrew\src\data\DopeRanatomy-Anatomy.csv"
$i = 1
foreach($item in $csv) {
	Write-Output $i
	$i += 1
	# yes this is ugly
	$yaml = "# Original: https://github.com/sannennetarou/DufteRanatomie/blob/main/cards/anatomie/"+$item.noteid.replace("'","''")+".yaml`n"
	$yaml += 'guid: '''+$item.guid.replace("'","''")+"'`n"
	$yaml += "`n"
	$yaml += 'noteid: '''+$item.noteid.replace("'","''")+"'`n"
	$yaml += "`n"
	$yaml += 'Title: '''+$item.Title.replace("'","''")+"'`n"
	$yaml += "`n"
	$yaml += 'OccludedImage: '''+$item.OccludedImage.replace("'","''")+"'`n"
	$yaml += 'Clinical: '''+$item.Clinical.replace("'","''")+"'`n"
	$yaml += 'Comment: '''+$item.Comment.replace("'","''")+"'`n"
	$yaml += 'Usernotes: '''+$item.Usernotes.replace("'","''")+"'`n"
	$yaml += 'Origin: '''+$item.Origin.replace("'","''")+"'`n"
	$yaml += 'Insertion: '''+$item.Insertion.replace("'","''")+"'`n"
	$yaml += 'Attachments: '''+$item.Attachments.replace("'","''")+"'`n"
	$yaml += 'Innervation: '''+$item.Innervation.replace("'","''")+"'`n"
	$yaml += 'Actions: '''+$item.Actions.replace("'","''")+"'`n"
	$yaml += 'Plate: '''+$item.Plate.replace("'","''")+"'`n"
	$yaml += '1a: '''+$item.'1a'.replace("'","''")+"'`n"
	$yaml += '2a: '''+$item.'2a'.replace("'","''")+"'`n"
	$yaml += '3a: '''+$item.'3a'.replace("'","''")+"'`n"
	$yaml += '4a: '''+$item.'4a'.replace("'","''")+"'`n"
	$yaml += '5a: '''+$item.'5a'.replace("'","''")+"'`n"
	$yaml += '6a: '''+$item.'6a'.replace("'","''")+"'`n"
	$yaml += '7a: '''+$item.'7a'.replace("'","''")+"'`n"
	$yaml += '8a: '''+$item.'8a'.replace("'","''")+"'`n"
	$yaml += '9a: '''+$item.'9a'.replace("'","''")+"'`n"
	$yaml += '10a: '''+$item.'10a'.replace("'","''")+"'`n"
	$yaml += '11a: '''+$item.'11a'.replace("'","''")+"'`n"
	$yaml += '12a: '''+$item.'12a'.replace("'","''")+"'`n"
	$yaml += '13a: '''+$item.'13a'.replace("'","''")+"'`n"
	$yaml += '14a: '''+$item.'14a'.replace("'","''")+"'`n"
	$yaml += '15a: '''+$item.'15a'.replace("'","''")+"'`n"
	$yaml += '16a: '''+$item.'16a'.replace("'","''")+"'`n"
	$yaml += '17a: '''+$item.'17a'.replace("'","''")+"'`n"
	$yaml += '18a: '''+$item.'18a'.replace("'","''")+"'`n"
	$yaml += '19a: '''+$item.'19a'.replace("'","''")+"'`n"
	$yaml += '20a: '''+$item.'20a'.replace("'","''")+"'`n"
	$yaml += 'tags:'+"`n"

	$tags = $item.tags.replace("'","''").Split(' ');

# Commenting this because I want all .yaml files in the same directory
#	$dirFound = 0;
#	foreach($tag in $tags) {
#		$yaml += '- '''+$tag+''''+"`n"
#		if(($dirFound -eq 0) -and ($tag -match 'DopeRanatomy::Region.*')) {
#			$dirFound = 1;
#			$path = $tag.Split('::');
#			$path = $path[2..($path.Count)];
#			$flatpath = $path -join '\';
#			$flatpath = '..\..\cards\anatomie\'+$flatpath.Replace(":", "_");
#			New-Item -ItemType Directory -Force -Path $flatpath
#		}
#	}
#	$file = $flatpath+'\'+$item.noteid+'.yaml'

	foreach($tag in $tags) {
		$yaml += '- '''+$tag+''''+"`n"
	}
	
	$flatpath = '..\..\cards\anatomie'
	New-Item -ItemType Directory -Force -Path $flatpath
	$file = $flatpath+'\'+$item.noteid+'.yaml'

	$yaml | Set-Content $file;
}
