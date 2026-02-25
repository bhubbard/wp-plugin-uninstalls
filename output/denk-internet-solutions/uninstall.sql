-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__denkis_token', '__denkis_first_import', '__denkis_last_run', '__denkis_wp_user', '__denkis_last_import', '__denkis_modules', '__denkis_wfts', 'denkis_fields', '__denkis_slug', '__denkis_last_update_timestamp_news', '__denkis_last_update_timestamp_content', '__denkis_last_update_timestamp_qa', '__denkis_last_update_timestamp_product', '__denkis_last_update_timestamp_tip', '__denkis_mix', '__denkis_update_interval');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ID_original', '_thumbnail_id', '_is_custom', 'related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('ID_original', '_thumbnail_id', '_is_custom', 'related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('ID_original', '_thumbnail_id', '_is_custom', 'related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ID_original', '_thumbnail_id', '_is_custom', 'related_posts');

