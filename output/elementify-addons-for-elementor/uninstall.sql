-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementify_addons_for_elementor_object_options', 'elementify_addons_for_elementor_activation_redirect', 'elementify_addons_for_elementor_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type');

