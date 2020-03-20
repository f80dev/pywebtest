
echo("Insertion de '<speak>Inscription au parcours SACRe.<break time="0.2s"/>Connexion pour vérification de l'email</speak>" de 0.515 sur 4.5224166666666665 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.515 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_8106489203807863037_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=515|515,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La première étape consiste à s'inscrire avec son adresse mail" de 6.289 sur 3.743333333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1682439804612849102_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=6289|6289,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 11127'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.12000083923339844 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=11127|11127,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 11878'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.20502901077270508 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=11878|11878,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 13014'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.593102216720581 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13014|13014,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 13783'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.22099685668945312 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13783|13783,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 14591'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.2589991092681885 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=14591|14591,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 18730'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=18730|18730,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La validation entraîne la vérification de l'email pour envoi d'un lien à ouvrir" de 19.239 sur 4.976166666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4022289773271168892_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=19239|19239,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 27948'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=27948|27948,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de '<speak>Parcours d'inscription</speak>" de 28.975 sur 1.574375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2288210125085159286_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=28975|28975,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Inscription_au_parcours_SACRe.mkv"
ffmpeg -i "Inscription_au_parcours_SACRe.avi" -i input.wav -c copy Inscription_au_parcours_SACRe.mkv
