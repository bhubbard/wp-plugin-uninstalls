-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf-fields', 'trp_settings', 'dce_visibility_max');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt', 'type', 'dce_visibility_max_user', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt', 'type', 'dce_visibility_max_user', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt', 'type', 'dce_visibility_max_user', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_wp_attachment_image_alt', 'type', 'dce_visibility_max_user', '_elementor_template_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_registration_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_registration_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_registration_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_registration_%';

