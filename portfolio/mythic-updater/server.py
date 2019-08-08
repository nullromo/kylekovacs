import urllib
import HTMLParser
import random
import time
import smtplib
from email.mime.text import MIMEText

class MythicParser(HTMLParser.HTMLParser):
    cards = [];

    def handle_starttag(self, tag, attrs):
        if tag == 'img':
            attrs = dict(attrs);
            source = attrs.get('src')
            if source != None and 'cards' in source:
                self.cards.append(source)

def url(image_name):
    return 'http://www.mythicspoiler.com/' + str(image_name);

def get_cards():
    url = 'http://www.mythicspoiler.com/';
    f = urllib.urlopen(url);
    parser = MythicParser();
    parser.feed(f.read());
    return set(parser.cards);

def notify(added_cards):
    message = 'New cards posted\n\n';
    for x in added_cards:
        message += url(x) + '\n\n';
    s = smtplib.SMTP('localhost')
    s.sendmail('kyle.style.kovacs@gmail.com', 'kylekovacs@berkeley.edu', message);
    s.sendmail('kylekovacs@berkeley.edu', 'tate.cutcliffe@gmail.com', message);
    s.quit();

def main():
    known_cards = set();
    while(True):
        print 'getting new cards'
        new_cards = get_cards();
        added_cards = new_cards - known_cards;
        if len(added_cards) > 0:
            notify(added_cards);
            print 'notified'
            for card in added_cards:
                print card
        known_cards = new_cards;
        print 'sleeping'
        time.sleep(60*60);


        # print 'removing a random card for testing'
        # known_cards.remove(random.sample(known_cards, 1)[0]);

if __name__ == '__main__':
    main();
