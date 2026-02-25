-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_duplicate_it_title_prefix', 'post_duplicate_it_title_suffix', 'post_duplicate_it_status', 'post_duplicate_it_enable_type', 'post_duplicate_it_redirect_link', 'post_duplicate_it_role_allowed', 'duplicate_do_activation_redirect', 'duplicate_it_plugin_rated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('duplicate_counter', '_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('duplicate_counter', '_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('duplicate_counter', '_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('duplicate_counter', '_elementor_data', '_wp_page_template', '_elementor_edit_mode', '_elementor_template_type');

