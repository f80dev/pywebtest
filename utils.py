import os
from random import randint
import nltk
from tinytag import TinyTag

def tirage( max: int):
    return str(randint(0, max))


def digits(n_digits=10,start=""):
    for i in range(n_digits-len(start)):
        start=start+str(randint(0,10))
    return start




def words(n_words=10):
    bryant_words = nltk.corpus.gutenberg.words('bryant-stories.txt')
    start = randint(0, len(bryant_words) - n_words)
    return " ".join(bryant_words[start:start + n_words])




def getDuration(filename):
    if os.path.exists(filename):
        tag = TinyTag.get(filename)
        return tag.duration/2
    else:
        return 0




def extract(text:str,_from:str,_to:str):
    if _from in text:
        start=text.index(_from,0)
    else:
        start=0

    if _to in text:
        end=text.index(_to,start)
    else:
        end=len(text)

    if start==end:end=len(text)
    return text[start+len(_from):end]

