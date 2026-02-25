-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_it_general_options', 'dpit_db_version', 'dp_it_text_styles_options', 'dpit_plugin_build_type', 'dp_it_labeling_options', 'active_sitewide_plugins', 'cptui_post_types', 'cptui_taxonomies', 'acf_version', 'acf_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';
DELETE FROM wp_options WHERE option_name LIKE 'transient_ajax_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dpit_step_count', 'dpit_steps_url_relative', 'dpit_steps_url_unified', 'dp_it_admin_color_v6', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_usermeta WHERE meta_key IN ('dpit_step_count', 'dpit_steps_url_relative', 'dpit_steps_url_unified', 'dp_it_admin_color_v6', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_termmeta WHERE meta_key IN ('dpit_step_count', 'dpit_steps_url_relative', 'dpit_steps_url_unified', 'dp_it_admin_color_v6', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dpit_step_count', 'dpit_steps_url_relative', 'dpit_steps_url_unified', 'dp_it_admin_color_v6', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen');

