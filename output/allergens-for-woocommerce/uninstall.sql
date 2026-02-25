-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('treceafw_icon_theme', '_wpml_custom_fields_translation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_afwv_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_afwv_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_afwv_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_afwv_%';

