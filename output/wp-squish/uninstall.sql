-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_wpsq_api_run', 'pp_wpsq_api_stats_jpeg', 'pp_wpsq_api_stats_png', 'pp_wpsq_settings');
DELETE FROM wp_options WHERE option_name LIKE 'pp_wpsq_api_stats_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pp-wpsq-processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pp-wpsq-processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pp-wpsq-processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pp-wpsq-processed');

