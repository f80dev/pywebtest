
echo("Insertion de '<speak>Parcours d'une campagne de mail.<break time="0.2s"/>Création des contacts, création de la campagne et expédition</speak>" de 0.51 sur 6.268125 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.51 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4562304831501370261_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=510|510,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Création d'une liste de contacts.<break time="0.2s"/></speak>" de 7.496 sur 2.2665416666666665 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7235246508364534012_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=7496|7496,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Chaque liste de contact doit avoir un nom et une éventuelle description" de 10.823 sur 4.841375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4218933907525707446_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=10823|10823,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 17612'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.8520588874816895 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=17612|17612,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 20007'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.8540019989013672 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=20007|20007,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Cette zone contient l'ensemble des types de contacts pouvant être insérés. On peut également ajouter les contacts d'autres campagnes" de 23.727 sur 7.7629166666666665 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8706373332903921856_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=23727|23727,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'On choisit un type de contact à insérer dans la liste proposée" de 37.885 sur 4.3515 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-6880232100541466819_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=37885|37885,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 42791'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=42791|42791,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Cette zone va permettre de sélectionner les contacts à introduire dans la liste à construire" de 43.016 sur 5.751291666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-3220571354230141063_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=43016|43016,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 51460'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=51460|51460,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Afin de simplifier le choix dans la liste, il est possible de réduire le nombre d'élément via la zone de filtre" de 54.771 sur 6.746125 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3427051047591563492_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=54771|54771,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 61764'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.021004199981689453 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=61764|61764,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'L'application du filtre se fait au fur et à mesure de la frappe" de 61.766 sur 4.41775 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8178818957155845075_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=61766|61766,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'On peut sélectionner tous les éléments de la liste ou n'en prendre que certains grâce aux case à cocher" de 66.194 sur 5.842458333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4430439220751627407_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=66194|66194,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Pour valider le choix, il suffit de cliquer en dehors de la liste" de 72.548 sur 4.381666666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-150134775695472246_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=72548|72548,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 79558'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=79558|79558,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'L'ensemble des contacts inclus dans la liste est affiché immédiatement" de 82.913 sur 4.327041666666666 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_109651465455343311_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=82913|82913,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La liste de contact va pouvoir être utilisée pour le mailing" de 87.316 sur 3.9559583333333332 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1377734638472032170_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=87316|87316,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Création d'une campagne de mail.<break time="0.2s"/>Associé un mail type avec un ensemble de contacts</speak>" de 91.971 sur 5.578791666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_5271251101864654594_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=91971|91971,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 101205'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.5099999904632568 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=101205|101205,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 102831'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.0859980583190918 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=102831|102831,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 107550'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=107550|107550,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 110475'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=110475|110475,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 114124'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.03499794006347656 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=114124|114124,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 117004'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=117004|117004,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La liste de contacts est maintenant associé au la campagne" de 120.42 sur 3.6539166666666665 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2471253312974783412_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=120420|120420,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Finalisation du mailing.<break time="0.2s"/>Selection du contenu & expédition</speak>" de 124.726 sur 4.533458333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-943552956894564811_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=124726|124726,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 133312'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.8180010318756104 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=133312|133312,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 140678'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=140678|140678,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 142456'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.4949979782104492 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=142456|142456,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 147732'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=147732|147732,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de '<speak>Fabrication d'une campagne d'appels téléphonique.<break time="0.2s"/></speak>" de 148.976 sur 3.2432916666666665 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1300102806960604277_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=148976|148976,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 155077'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.7399981021881104 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=155077|155077,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 158017'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 2.397002935409546 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=158017|158017,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 161658'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=161658|161658,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 165245'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.02200007438659668 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=165245|165245,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 168077'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=168077|168077,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La liste de contacts sont maintenant associé à la campagne" de 171.414 sur 3.826375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5194355797894105106_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=171414|171414,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 181109'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=181109|181109,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



del output.mkv
ffmpeg -i "mail_campagne.avi" -i input.wav -c copy output.mkv
