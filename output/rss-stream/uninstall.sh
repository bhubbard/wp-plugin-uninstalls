#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RSS_Stream_hour'
wp option delete 'RSS_Stream_date'
wp option delete 'RSS_Stream_timezone'
wp option delete 'RSS_Stream_plurkuser'
wp option delete 'RSS_Stream_twitteruser'
wp option delete 'RSS_Stream_twitterhyperlinks'
wp option delete 'RSS_Stream_twitterreplies'
wp option delete 'RSS_Stream_jaikuuser'
wp option delete 'RSS_Stream_jaikuhyperlinks'
wp option delete 'RSS_Stream_jaikureplies'
wp option delete 'RSS_Stream_delicioususer'
wp option delete 'RSS_Stream_deliciousshowtags'
wp option delete 'RSS_Stream_deliciousfiltertag'
wp option delete 'RSS_Stream_deliciousshowdesc'
wp option delete 'RSS_Stream_lastfmuser'
wp option delete 'RSS_Stream_blogfeed'
wp option delete 'RSS_Stream_blogshowautor'
wp option delete 'RSS_Stream_flickruser'
wp option delete 'RSS_Stream_photobucketfeed'
wp option delete 'RSS_Stream_facebookfeed'
wp option delete 'RSS_Stream_pownceuser'
wp option delete 'RSS_Stream_pownceshowreplies'
wp option delete 'RSS_Stream_powncelink'
wp option delete 'RSS_Stream_powncediff'
wp option delete 'RSS_Stream_genericfeednumber'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'RSS_Stream_genericfeed%'"
wp option delete 'RSS_Stream_timelapse'
wp option delete 'RSS_Stream_UTF8'

