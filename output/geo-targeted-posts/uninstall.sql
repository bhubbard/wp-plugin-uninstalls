-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gtp_post_list', 'gtp_post_list_posttypes', 'gtp_frontpage_posts', 'gtp_simulate_location', 'gtp_plugin_active');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gtp_countries');
DELETE FROM wp_usermeta WHERE meta_key IN ('gtp_countries');
DELETE FROM wp_termmeta WHERE meta_key IN ('gtp_countries');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gtp_countries');

