-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcp_enable_magic_copy_btn_specific_section', 'lcp_enable_copy_paste_btn', 'lcp_enable_magic_copy_btn', 'bdt_enable_duplicator', 'element_pack_other_settings', 'lcp_enable_magic_copy_btn_login_user');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type');

