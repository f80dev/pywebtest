
echo("Insertion de '<speak>Inscription au parcours SACRe.<break time="0.2s"/>Connexion pour vérification de l'email</speak>" de 0.507 sur 4.5224166666666665 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.507 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_8106489203807863037_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=507|507,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La première étape consiste à s'inscrire avec son adresse mail" de 6.166 sur 3.743333333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1682439804612849102_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=6166|6166,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 10017'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.17299818992614746 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=10017|10017,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 10833'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.24599909782409668 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=10833|10833,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 12028'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.6629970073699951 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=12028|12028,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 12796'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.22499704360961914 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=12796|12796,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 13576'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.24199509620666504 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13576|13576,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 16652'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=16652|16652,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La validation entraîne la vérification de l'email pour envoi d'un lien à ouvrir" de 17.153 sur 4.976166666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4022289773271168892_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=17153|17153,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 24852'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=24852|24852,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de '<speak>Parcours d'inscription</speak>" de 25.862 sur 1.574375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2288210125085159286_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=25862|25862,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Inscription_au_parcours_SACRe.mkv"
ffmpeg -i "Inscription_au_parcours_SACRe.avi" -i input.wav -c copy Inscription_au_parcours_SACRe.mkv
