
echo("Insertion de '<speak>Affectation d'un stage.<break time="0.2s"/>Décomposition de la procédure</speak>" de 0.507 sur 3.8077916666666667 secondes")

del input.wav
ffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t 0.507 input.wav
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_4688236760779373452_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=507|507,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La première étape de création d'un stage commence par sélectionner l'étudiant concerné par le stage" de 4.906 sur 5.74 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_1957786755853251073_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=4906|4906,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 11937'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=11937|11937,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Afin de simplifier le choix dans la liste, il est possible de réduire le nombre d'éléments via la zone de filtre" de 15.658 sur 6.036041666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_4207827248258525422_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=15658|15658,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de 'La liste se réduit dés les premiers caractére saisie dans le filtre" de 21.926 sur 4.149375 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_4580327179066917837_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=21926|21926,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 29225'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=29225|29225,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 31386'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.7509980201721191 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=31386|31386,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 33568'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.5420088768005371 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=33568|33568,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 35008'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.8929951190948486 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=35008|35008,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 36064'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.48999500274658203 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=36064|36064,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 37076'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=37076|37076,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Dans l'onglet suivant on précise la société proposant le stage, le lieu et les représentants" de 37.58 sur 5.319041666666666 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-664699296474804428_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=37580|37580,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 44153'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=44153|44153,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 51184'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=51184|51184,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 52992'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.49900197982788086 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=52992|52992,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 54297'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.21799898147583008 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=54297|54297,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 55079'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.23600196838378906 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=55079|55079,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 56920'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.16399788856506348 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=56920|56920,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 57732'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.25299787521362305 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=57732|57732,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 58470'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.16200613975524902 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=58470|58470,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 59423'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.3991420269012451 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=59423|59423,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 60435'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=60435|60435,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Ici, on va préciser le sujet du stage et donner des informations sur le tuteur" de 60.937 sur 5.102416666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-4885234202849029080_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=60937|60937,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 67347'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.5070011615753174 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=67347|67347,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 70031'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 2.126995086669922 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=70031|70031,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 71925'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.352997064590454 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=71925|71925,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 73271'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.2109968662261963 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=73271|73271,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 74019'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.2090129852294922 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=74019|74019,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 75180'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.46395182609558105 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=75180|75180,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 76500'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.7719988822937012 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=76500|76500,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./click.mp3 à la position 77569'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=77569|77569,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Cette zone va permettre de préciser la quantité d'heure par semaine" de 78.069 sur 3.7409166666666667 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_2516300216020103135_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=78069|78069,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./clavier.wav à la position 83447'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.26199889183044434 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=83447|83447,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 85895'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 1.9019978046417236 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=85895|85895,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 86884'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.42299795150756836 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=86884|86884,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 87837'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.3789989948272705 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=87837|87837,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 88862'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.4660000801086426 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=88862|88862,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo 'Ajout de ./clavier.wav à la position 90091'

del output.wav
call ffmpeg -y  -i ./clavier.wav -t 0.10799813270568848 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=90091|90091,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'La saisie terminée, on valide le stage" de 94.202 sur 2.789875 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_7838189044490945699_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=94202|94202,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo 'Ajout de ./click.mp3 à la position 97336'

del output.wav
call ffmpeg -y  -i ./click.mp3 -t 0.2 -c copy output_insert.wav
call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex "[0:a]volume=1[a0];[1:a]adelay=97336|97336,volume=0.6[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output_temp.wav
copy output_temp.wav output.wav

del input.wav
copy output.wav input.wav
del output_insert.wav



echo("Insertion de 'Dés validation le stage apparait dans la liste" de 102.063 sur 2.9462083333333333 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_-5415983141210612580_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=102063|102063,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


echo("Insertion de '<speak>Procédure terminée.<break time="0.2s"/>Le stage peut ensuite être modifié ou simplement supprimé si besoin</speak>" de 105.684 sur 5.260791666666666 secondes")
del output.wav
call ffmpeg -i input.wav -acodec libopus -i ./speech/voice_132928282973404648_fr-FR.ogg -filter_complex "[0:a]volume=1[a0];[1:a]adelay=105684|105684,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]" -map "[a]" output.wav

del input.wav
copy output.wav input.wav


del "Affectation_d_un_stage.mkv"
ffmpeg -i "Affectation_d_un_stage.avi" -i input.wav -c copy Affectation_d_un_stage.mkv
