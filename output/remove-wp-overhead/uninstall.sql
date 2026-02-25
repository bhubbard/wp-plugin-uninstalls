-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%remove_remove_dashicons';
DELETE FROM wp_options WHERE option_name LIKE '%remove_rsd_link';
DELETE FROM wp_options WHERE option_name LIKE '%remove_wlwmanifest_link';
DELETE FROM wp_options WHERE option_name LIKE '%remove_rss_feed_links';
DELETE FROM wp_options WHERE option_name LIKE '%remove_next_prev_links';
DELETE FROM wp_options WHERE option_name LIKE '%remove_shortlink';
DELETE FROM wp_options WHERE option_name LIKE '%remove_wp_generator';
DELETE FROM wp_options WHERE option_name LIKE '%remove_version_numbers_from_style_script';
DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_emojicons';
DELETE FROM wp_options WHERE option_name LIKE '%disable_json_api';
DELETE FROM wp_options WHERE option_name LIKE '%remove_canonical';
DELETE FROM wp_options WHERE option_name LIKE '%remove_woo_generator';
DELETE FROM wp_options WHERE option_name LIKE '%disable_wp_widgets';
DELETE FROM wp_options WHERE option_name LIKE '%remove_jquery_migrate';
DELETE FROM wp_options WHERE option_name LIKE '%disable_xmlrpc';
DELETE FROM wp_options WHERE option_name LIKE '%remove_block_scripts';
DELETE FROM wp_options WHERE option_name LIKE '%disable_gravatar';
DELETE FROM wp_options WHERE option_name LIKE '%transient_settingsv3';
DELETE FROM wp_options WHERE option_name LIKE '%transient_settings';

