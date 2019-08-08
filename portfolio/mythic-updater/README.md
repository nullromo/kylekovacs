# Mythic Updater

This Python script polls [Mythic Spoiler](http://www.mythicspoiler.com) for new updates and e-mails them to me.

## Details

I used to run this script on an AWS server during my 1-year free trial. It was pretty useful to be able to see new cards as they got posted up on the site. Nowadays, they have added [this](http://mythicspoiler.com/newspoilers.html) so I no longer need this scraper.

A couple of issues arose with this, the first being that my spam filter was blocking my own e-mails. I'm still not sure how to make the messages not look like spam, but I fixed the issue by just whitelisting myself on the e-mail account side.

Another issue resulted from a change in the formatting of the MythicSpoiler pages. They changed the way they represented some of the card images in the html, so the parsing became incorrect. I fixed it to work on the new pages, but didn't bother to make it backwards compatible with the old pages (because what would be the point of that anyway?). And who knows, maybe they've changed it again by now...
