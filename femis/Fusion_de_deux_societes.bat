
echo("Insertion de '<speak>Fusion de deux sociétés.<break time="0.2s"/>Identification des doublons par le nom et fusion des sociétés</speak>" de 0.521 sur 5.231958333333333 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.521 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1687267989336692823_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=521|521,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Dans cet exemple on recherche des doublons par le nom" de 6.445 sur 2.9805416666666664 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-357957569679372769_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=6445|6445,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 9468'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.24100089073181152 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=9468|9468,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 13165'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13165|13165,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Pour réaliser la fusion, on visualise le premier enregistrement" de 13.674 sur 3.8837916666666663 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2167968050088186773_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13674|13674,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 20840'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=20840|20840,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Partant du principe qu'une fusion est possible on va étudier la différence entre les deux enregistrements" de 26.787 sur 5.628458333333334 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_5443226392731370372_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=26787|26787,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 32673'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=32673|32673,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'OASIS propose par défaut un enregistrement proche" de 36.337 sur 3.3445 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3683418614691063054_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=36337|36337,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Il est possible de choisir un autre enregistrement pour la fusion" de 42.906 sur 3.606708333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2191166722697810301_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=42906|42906,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 46714'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=46714|46714,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'L'ensemble des champs impactés par la fusion sont listés ici" de 50.451 sur 3.623875 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-3496616232604058623_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=50451|50451,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Dans l'enregistrement fusionné, les champs rouges disparaissent au profit des champs 'verts'" de 54.157 sur 5.07025 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_9149213122863118193_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=54157|54157,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'On réalise la fusion" de 63.93 sur 1.6522916666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5028790636855653538_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=63930|63930,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 65799'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=65799|65799,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La liste ne comporte plus qu'un seul enregistrement" de 67.852 sur 3.0534999999999997 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8811208944323692391_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=67852|67852,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Fin du tutoriel.<break time="0.2s"/>Réalisation F80</speak>" de 72.443 sur 3.2604166666666665 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1453726902532149006_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=72443|72443,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Fusion_de_deux_societes.mkv"
ffmpeg -i "Fusion_de_deux_societes.avi" -i input.wav -c copy Fusion_de_deux_societes.mkv

MOVE /Y Fusion_de_deux_societes.* femis