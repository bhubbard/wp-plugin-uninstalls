-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RSS_Stream_hour', 'RSS_Stream_date', 'RSS_Stream_timezone', 'RSS_Stream_plurkuser', 'RSS_Stream_twitteruser', 'RSS_Stream_twitterhyperlinks', 'RSS_Stream_twitterreplies', 'RSS_Stream_jaikuuser', 'RSS_Stream_jaikuhyperlinks', 'RSS_Stream_jaikureplies', 'RSS_Stream_delicioususer', 'RSS_Stream_deliciousshowtags', 'RSS_Stream_deliciousfiltertag', 'RSS_Stream_deliciousshowdesc', 'RSS_Stream_lastfmuser', 'RSS_Stream_blogfeed', 'RSS_Stream_blogshowautor', 'RSS_Stream_flickruser', 'RSS_Stream_photobucketfeed', 'RSS_Stream_facebookfeed', 'RSS_Stream_pownceuser', 'RSS_Stream_pownceshowreplies', 'RSS_Stream_powncelink', 'RSS_Stream_powncediff', 'RSS_Stream_genericfeednumber', 'RSS_Stream_timelapse', 'RSS_Stream_UTF8');
DELETE FROM wp_options WHERE option_name LIKE 'RSS_Stream_genericfeed%';

