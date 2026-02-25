-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_unit';
DELETE FROM wp_options WHERE option_name LIKE 'feedbackcompany_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpml_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpml_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpml_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpml_language');

