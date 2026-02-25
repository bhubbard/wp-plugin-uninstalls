-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('organic::settings_last_updated', 'organic::log_to_sentry');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc');

