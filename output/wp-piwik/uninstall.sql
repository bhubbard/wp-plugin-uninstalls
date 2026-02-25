-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-piwik-manually', 'wp-piwik-notices', 'wp-piwik_global-settings', 'wp-piwik_settings', 'wpmu-piwik_global-settings');
DELETE FROM wp_options WHERE option_name LIKE 'wp-piwik_global-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-piwik-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-piwik_c_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp-piwik_custom_cat%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp-piwik_custom_val%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp-piwik_custom_val%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp-piwik_custom_val%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp-piwik_custom_val%';

