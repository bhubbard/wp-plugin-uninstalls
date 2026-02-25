-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vx_crm_forms_ids', 'vxcf_all_forms', 'fs_contact_global', 'crm_perks_upload_folder', 'cforms_settings', 'vxcf_all_fields', 'recently_activated', 'vxcf_form_dissmiss_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_updates';
DELETE FROM wp_options WHERE option_name LIKE '%_install_data';
DELETE FROM wp_options WHERE option_name LIKE 'print_note_%';
DELETE FROM wp_options WHERE option_name LIKE '%_msg';
DELETE FROM wp_options WHERE option_name LIKE '%_msgs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', '_g_feedback_shortcode', '__elementor_forms_snapshot', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', '_g_feedback_shortcode', '__elementor_forms_snapshot', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', '_g_feedback_shortcode', '__elementor_forms_snapshot', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', '_g_feedback_shortcode', '__elementor_forms_snapshot', '_elementor_data');

