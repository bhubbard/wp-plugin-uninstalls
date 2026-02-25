-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myplugin_flush_rewrite_rules_flag', 'dmopress');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('address', 'city', 'facebook_url', 'instagram_url', 'latitude', 'longitude', 'zip', 'stateprov', 'telephone', 'tripadvisor_url', 'twitter_url', 'website_url', 'symbol', 'tripadvisor_location_id', 'twitter_handle');
DELETE FROM wp_usermeta WHERE meta_key IN ('address', 'city', 'facebook_url', 'instagram_url', 'latitude', 'longitude', 'zip', 'stateprov', 'telephone', 'tripadvisor_url', 'twitter_url', 'website_url', 'symbol', 'tripadvisor_location_id', 'twitter_handle');
DELETE FROM wp_termmeta WHERE meta_key IN ('address', 'city', 'facebook_url', 'instagram_url', 'latitude', 'longitude', 'zip', 'stateprov', 'telephone', 'tripadvisor_url', 'twitter_url', 'website_url', 'symbol', 'tripadvisor_location_id', 'twitter_handle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('address', 'city', 'facebook_url', 'instagram_url', 'latitude', 'longitude', 'zip', 'stateprov', 'telephone', 'tripadvisor_url', 'twitter_url', 'website_url', 'symbol', 'tripadvisor_location_id', 'twitter_handle');

