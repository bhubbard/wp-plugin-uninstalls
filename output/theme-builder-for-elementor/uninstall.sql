-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbfe_settings_page', 'tbfe_settings_post', 'tbfe_settings_archive', 'tbfe_settings_404', 'elementor_cpt_support', 'tbfe_settings', 'tbfe_active_time', 'tbfe_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'tbfe_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbfe_elementor_page', 'tbfe_elementor_post', 'tbfe_elementor_header_page', 'tbfe_elementor_footer_page', 'tbfe_elementor_header_post', 'tbfe_elementor_footer_post', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbfe_elementor_page', 'tbfe_elementor_post', 'tbfe_elementor_header_page', 'tbfe_elementor_footer_page', 'tbfe_elementor_header_post', 'tbfe_elementor_footer_post', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbfe_elementor_page', 'tbfe_elementor_post', 'tbfe_elementor_header_page', 'tbfe_elementor_footer_page', 'tbfe_elementor_header_post', 'tbfe_elementor_footer_post', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbfe_elementor_page', 'tbfe_elementor_post', 'tbfe_elementor_header_page', 'tbfe_elementor_footer_page', 'tbfe_elementor_header_post', 'tbfe_elementor_footer_post', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tbfe_elementor_header_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tbfe_elementor_header_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tbfe_elementor_header_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tbfe_elementor_header_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tbfe_elementor_footer_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tbfe_elementor_footer_%';

