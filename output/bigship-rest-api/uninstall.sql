-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bigshiprestapi_api_token', 'bigship_consumer_key', 'bigship_consumer_secret', 'bigship_key_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bigshiprestapi_api_token', 'bigship_consumer_key', 'bigship_consumer_secret', 'bigship_key_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bigshiprestapi_api_token', 'bigship_consumer_key', 'bigship_consumer_secret', 'bigship_key_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bigshiprestapi_api_token', 'bigship_consumer_key', 'bigship_consumer_secret', 'bigship_key_id');

