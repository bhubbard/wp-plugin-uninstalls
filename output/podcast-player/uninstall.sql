-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp-common-options', 'pp_shortcode_options', 'pp_total_image_downloads', 'podcast-player-admin-notice', 'pp_feed_index', 'pp_media_src_index', 'pp-register');
DELETE FROM wp_options WHERE option_name LIKE 'pp_feed_data_%';
DELETE FROM wp_options WHERE option_name LIKE '%_recent_dispatch';
DELETE FROM wp_options WHERE option_name LIKE '%_force_dispatch';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pp_featured_key_norm', 'pp_featured_key', 'pp_import_data', 'pp_episode_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pp_featured_key_norm', 'pp_featured_key', 'pp_import_data', 'pp_episode_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pp_featured_key_norm', 'pp_featured_key', 'pp_import_data', 'pp_episode_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pp_featured_key_norm', 'pp_featured_key', 'pp_import_data', 'pp_episode_id');

