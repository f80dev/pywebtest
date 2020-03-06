
#Insertion de '<speak>Cr�ation d'un cours.<break time="1s"/>Positionnement d'un cours, affectation d'une salle et choix des �l�ves</speak>" de 0.513 sur 6.441708333333334 secondes

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.513 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_4420967939991945432_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=513|513,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de '<speak>Premi�re connexion � OASIS.<break time="1s"/>usage du login et du mot de passe</speak>" de 7.479 sur 5.495958333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3319182590397100153_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=7479|7479,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'Pour se connecter, on utilise l'identifiant et le mot de passe fourni par l'administrateur � la cr�ation du compte" de 12.998 sur 7.305458333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-7168101105846269373_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=12998|12998,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav � la position 20808

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.49100494384765625 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=20808|20808,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav � la position 21738

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.387998104095459 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=21738|21738,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'En cas d'oublie, on peut toujours se faire renvoyer son mot de passe" de 25.382 sur 4.21375 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_3729935021199561809_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=25382|25382,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 � la position 34538

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=34538|34538,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'L'utilisateur est automatiquement reconnect� sur sa derni�re page consult�" de 34.74 sur 4.89925 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-8233652131669852949_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=34740|34740,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 � la position 42248

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=42248|42248,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'La liste des cours �tant importante, il est pr�f�rable d'utiliser le filtre pour retrouver rapidement le cours � planifier" de 44.652 sur 7.457541666666667 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-1860395897181589119_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=44652|44652,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./clavier.wav � la position 61564

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.8759970664978027 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=61564|61564,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'On va s�lectionner le cours, pr�sent dans la liste apr�s application du filtre" de 63.715 sur 4.979291666666667 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7666781969566880673_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=63715|63715,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Insertion de 'On s�lectionne la semaine ou l'on souhaite positionner le cours" de 73.735 sur 3.7350833333333333 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-6338192594004621256_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=73735|73735,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 � la position 81196

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=81196|81196,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 � la position 84979

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=84979|84979,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 � la position 88800

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=88800|88800,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 � la position 92630

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=92630|92630,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Insertion de 'Puis on le fait glisser sur le jour souhait�" de 92.831 sur 2.6169166666666666 secondes
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7291109194810688133_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=92831|92831,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


#Ajout de ./click.mp3 � la position 99714

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=99714|99714,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./clavier.wav � la position 102466

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.437000036239624 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=102466|102466,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



#Ajout de ./click.mp3 � la position 107083

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=107083|107083,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



del output.mkv
ffmpeg -i "create_cours.avi" -i input.wav -c copy output.mkv
