-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'nsa_wpfbp_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate_date';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_meta_keys';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_values';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_values';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_values';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_values';

