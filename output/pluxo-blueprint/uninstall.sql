-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type');

