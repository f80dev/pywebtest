
#Insertion de '<speak>Parcours d'une campagne de mail.<break time="1s"/>Création des contacts, création de la campagne et expédition</speak>" de 0.513 sur 7.067958333333333 secondes

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.513 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7963546140306018896_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=513|513,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de '<speak>Première connexion à OASIS.<break time="1s"/>usage du login et du mot de passe</speak>" de 8.105 sur 5.495958333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3319182590397100153_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=8105|8105,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'Pour se connecter, on utilise l'identifiant et le mot de passe fourni par l'administrateur à la création du compte" de 16.101 sur 7.305458333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-7168101105846269373_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=16101|16101,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav à la position 25381

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.6990039348602295 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=25381|25381,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 26228

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.30597901344299316 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=26228|26228,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'En cas d'oublie, on peut toujours se faire renvoyer son mot de passe" de 30.002 sur 4.21375 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3729935021199561809_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=30002|30002,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 à la position 38905

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=38905|38905,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'L'utilisateur est automatiquement reconnecté sur sa dernière page consulté" de 39.106 sur 4.89925 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8233652131669852949_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=39106|39106,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de '<speak>Création de contact.<break time="1s"/></speak>" de 44.524 sur 2.4170416666666665 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4391357594088832908_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=44524|44524,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'On choisi le type de contacte dans le menu UTILISATEUR" de 46.959 sur 3.802625 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2280180142340794282_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=46959|46959,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'On va renseigner les champs obligatoires Nom, Prénom et adresse Email" de 50.781 sur 4.728375 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1971784276471900523_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=50781|50781,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav à la position 57701

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.5219991207122803 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=57701|57701,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 59071

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.2850039005279541 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=59071|59071,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 62918

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.7093870639801025 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=62918|62918,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 64454

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.46100616455078125 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=64454|64454,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 à la position 69273

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=69273|69273,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'La validation entraine la création du contact" de 69.474 sur 3.1835 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-6964845580757753472_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=69474|69474,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'Pour les besoins du parcours, on créé d'autres contacts" de 72.684 sur 3.3724583333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2124745784546090403_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=72684|72684,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del output.mkv
ffmpeg -i "mail_campagne.avi" -i input.wav -c copy output.mkv
