
#Insertion de '<speak>Parcours d'une campagne de mail.<break time="1s"/>Création des contacts, création de la campagne et expédition</speak>" de 0.515 sur 7.067958333333333 secondes

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.515 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7963546140306018896_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=515|515,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de '<speak>Connexion à OASIS.<break time="1s"/>usage du login et du mot de passe</speak>" de 9.167 sur 4.987916666666667 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7129486007527293072_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=9167|9167,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'Pour se connecter, on utilise l'identifiant et le mot de passe fourni par l'administrateur à la création du compte" de 14.175 sur 7.305458333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-7168101105846269373_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=14175|14175,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav à la position 21724

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.23698115348815918 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=21724|21724,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 22432

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.17200088500976562 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=22432|22432,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'En cas d'oublie, on peut toujours se faire renvoyer son mot de passe" de 26.111 sur 4.21375 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3729935021199561809_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=26111|26111,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 à la position 35202

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=35202|35202,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'L'utilisateur est automatiquement reconnecté sur sa dernière page consulté" de 35.409 sur 4.89925 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8233652131669852949_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=35409|35409,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 à la position 42937

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=42937|42937,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de '<speak>Création de contact.<break time="1s"/></speak>" de 81.892 sur 2.4170416666666665 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4391357594088832908_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=81892|81892,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'On choisi le type de contacte dans le menu UTILISATEUR" de 84.34 sur 3.802625 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-2280180142340794282_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=84340|84340,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'On va renseigner les champs obligatoires Nom, Prénom et adresse Email" de 88.165 sur 4.728375 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1971784276471900523_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=88165|88165,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav à la position 94869

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.2669961452484131 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=94869|94869,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 96136

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.1799938678741455 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=96136|96136,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 99176

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.8929970264434814 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=99176|99176,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav à la position 100589

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.3419971466064453 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=100589|100589,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 à la position 105366

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=105366|105366,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'La validation entraine la création du contact" de 105.577 sur 3.1835 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-6964845580757753472_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=105577|105577,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'Pour les besoins du parcours, on créé d'autres contacts" de 108.807 sur 3.3724583333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2124745784546090403_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=108807|108807,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del output.mkv
ffmpeg -i "mail_campagne.avi" -i input.wav -c copy output.mkv
