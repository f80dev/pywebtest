
echo("Insertion de '<speak>Remplissage du formulaire d'inscription SACRe</speak>" de 0.508 sur 3.0622916666666664 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.508 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1962752627234196216_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=508|508,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'A tout moment, le candidat peut se connecter pour commencer ou compléter son dossier" de 3.09 sur 4.977791666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2984121281149745196_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=3090|3090,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 8049'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.26799988746643066 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=8049|8049,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 8872'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.26799702644348145 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=8872|8872,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'En cas d'oublie, on peut toujours se faire renvoyer son mot de passe" de 11.766 sur 3.981708333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3729935021199561809_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=11766|11766,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 18298'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=18298|18298,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Après connexion il retrouve son dossier tel qu'il l'avait laissé" de 23.948 sur 3.5494999999999997 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8952449505366219883_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=23948|23948,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Le candidat doit renseigner l'ensemble des paramètres liés à la civilité" de 29.561 sur 4.133958333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-9052794414918544658_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=29561|29561,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Il précise ensuite quelles sont les aides dont il dispose" de 36.803 sur 3.0995416666666666 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2127824662146381314_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=36803|36803,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Quelles sont les études poursuivi jusqu'à maintenant" de 41.95 sur 2.800375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8675757990174252876_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=41950|41950,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Puis ses productions et publications" de 46.808 sur 2.460583333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8836251153522641692_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=46808|46808,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Enfin il transfmet à l'école les différents documents nécéssaires à la validation du dossier" de 51.32 sur 5.209083333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5483926652487202236_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=51320|51320,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>L'inscription prend fin après paiement et confirmation</speak>" de 59.048 sur 3.3417499999999998 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-3859425957680951111_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=59048|59048,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Remplissage_du_formulaire_d_inscription_SACRe.mkv"
ffmpeg -i "Remplissage_du_formulaire_d_inscription_SACRe.avi" -i input.wav -c copy Remplissage_du_formulaire_d_inscription_SACRe.mkv
