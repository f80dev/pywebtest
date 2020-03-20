
echo("Insertion de '<speak>Remplissage du formulaire d'inscription SACRe</speak>" de 0.521 sur 3.0622916666666664 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.521 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1962752627234196216_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=521|521,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'A tout moment, le candidat peut se connecter pour commencer ou compléter son dossier" de 3.132 sur 4.977791666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2984121281149745196_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=3132|3132,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 9151'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.25800395011901855 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=9151|9151,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 9922'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.22800087928771973 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=9922|9922,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'En cas d'oublie, on peut toujours se faire renvoyer son mot de passe" de 13.943 sur 3.981708333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3729935021199561809_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=13943|13943,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 21515'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=21515|21515,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Après connexion il retrouve son dossier tel qu'il l'avait laissé" de 28.258 sur 3.5494999999999997 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8952449505366219883_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=28258|28258,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Le candidat doit renseigner l'ensemble des paramètres liés à la civilité" de 34.871 sur 4.133958333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-9052794414918544658_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=34871|34871,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Il précise ensuite quelles sont les aides dont il dispose" de 42.071 sur 3.0995416666666666 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2127824662146381314_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=42071|42071,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Quelles sont les études poursuivi jusqu'à maintenant" de 47.21 sur 2.800375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8675757990174252876_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=47210|47210,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Puis ses productions et publications" de 52.046 sur 2.460583333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8836251153522641692_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=52046|52046,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'Enfin il transfmet à l'école les différents documents nécéssaires à la validation du dossier" de 56.544 sur 5.209083333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5483926652487202236_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56544|56544,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>L'inscription prend fin après paiement et confirmation</speak>" de 64.279 sur 3.3417499999999998 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-3859425957680951111_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=64279|64279,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Remplissage_du_formulaire_d_inscription_SACRe.mkv"
ffmpeg -i "Remplissage_du_formulaire_d_inscription_SACRe.avi" -i input.wav -c copy Remplissage_du_formulaire_d_inscription_SACRe.mkv
