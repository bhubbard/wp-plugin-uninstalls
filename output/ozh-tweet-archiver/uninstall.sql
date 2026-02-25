-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ozh_ta', 'ozh_ta_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ozh_ta_id', 'ozh_ta_source', 'ozh_ta_reply_to_name', 'ozh_ta_reply_to_tweet');
DELETE FROM wp_usermeta WHERE meta_key IN ('ozh_ta_id', 'ozh_ta_source', 'ozh_ta_reply_to_name', 'ozh_ta_reply_to_tweet');
DELETE FROM wp_termmeta WHERE meta_key IN ('ozh_ta_id', 'ozh_ta_source', 'ozh_ta_reply_to_name', 'ozh_ta_reply_to_tweet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ozh_ta_id', 'ozh_ta_source', 'ozh_ta_reply_to_name', 'ozh_ta_reply_to_tweet');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ozh_ta_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ozh_ta_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ozh_ta_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ozh_ta_%';

