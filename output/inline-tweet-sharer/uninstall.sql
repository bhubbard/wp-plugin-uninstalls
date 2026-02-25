-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inline-tweet-sharer-bitlyapikey', 'inline-tweet-sharer-bitlyusername', 'inline-tweet-sharer-default', 'inline-tweet-sharer-removespaces', 'inline-tweet-sharer-bitly', 'inline-tweet-sharer-urlshortened', 'inline-tweet-sharer-usedefault', 'inline-tweet-sharer-dprefix', 'inline-tweet-sharer-dsuffix', 'inline-tweet-sharer-bypassutfdecode', 'inline-tweet-sharer-capitalise', 'inline-tweet-sharer-extraclass', 'inline-tweet-sharer-marker', 'inline-tweet-sharer-dashicons', 'inline-tweet-sharer-disable-stylesheets', 'its_group_id');

