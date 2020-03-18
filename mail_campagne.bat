
echo("Insertion de '<speak>Parcours d'une campagne de mail.<break time="0.2s"/>Création des contacts, création de la campagne et expédition</speak>" de 1.116 sur 0 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 1.116 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4562304831501370261_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=1116|1116,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Création d'une liste de contacts</speak>" de 2.387 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3011795706276085202_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=2387|2387,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Chaque liste de contact doit avoir un nom et une éventuelle description" de 3.968 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4218933907525707446_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=3968|3968,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 4986'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.108994960784912 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=4986|4986,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 7645'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 2.1096508502960205 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=7645|7645,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Cette zone contient l'ensemble des types de contacts pouvant être insérés. On peut également ajouter les contacts d'autres campagnes" de 10.721 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8706373332903921856_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=10721|10721,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'On choisit un type de contact à insérer dans la liste proposée" de 12.971 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-6880232100541466819_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=12971|12971,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 13281'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13281|13281,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Afin de simplifier le choix dans la liste, il est possible de réduire le nombre d'élément via la zone de filtre" de 56.556 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3427051047591563492_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56556|56556,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 56500'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.05900311470031738 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56500|56500,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'L'application du filtre se fait au fur et à mesure de la frappe" de 56.8 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8178818957155845075_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56800|56800,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'On peut sélectionner tous les éléments de la liste ou n'en prendre que certains grâce aux case à cocher" de 56.806 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4430439220751627407_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56806|56806,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Pour valider le choix, il suffit de cliquer en dehors de la liste" de 57.609 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-150134775695472246_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=57609|57609,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'L'ensemble des contacts inclus dans la liste est affiché immédiatement" de 91.869 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_109651465455343311_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=91869|91869,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La liste de contact va pouvoir être utilisée pour le mailing" de 91.927 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1377734638472032170_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=91927|91927,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Création d'une campagne de mail.<break time="0.2s"/>Associé un mail type avec un ensemble de contacts</speak>" de 92.69 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_5271251101864654594_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=92690|92690,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 95873'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.8530011177062988 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=95873|95873,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 97853'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.412060022354126 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=97853|97853,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 101614'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=101614|101614,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 140569'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.03399801254272461 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=140569|140569,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La liste de contacts est maintenant associé au la campagne" de 174.935 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2471253312974783412_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=174935|174935,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Finalisation du mailing.<break time="0.2s"/>Selection du contenu & expédition</speak>" de 175.807 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-943552956894564811_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=175807|175807,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 179911'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 2.718413829803467 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=179911|179911,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 185606'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=185606|185606,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 186515'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.5990951061248779 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=186515|186515,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 190850'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=190850|190850,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de '<speak>Fabrication d'une campagne d'appels téléphonique</speak>" de 192.161 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-3663569976620729078_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=192161|192161,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 194610'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.0219988822937012 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=194610|194610,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 198126'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 2.9740490913391113 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=198126|198126,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 238095'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.044000864028930664 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=238095|238095,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La liste de contacts sont maintenant associé à la campagne" de 286.746 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5194355797894105106_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=286746|286746,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak></speak>" de 329.51 sur 0 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7266962470545661562_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=329510|329510,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del mail_campagne.mkv
ffmpeg -i "mail_campagne.avi" -i input.wav -c copy mail_campagne.mkv

 call mail_campagne.mkv