-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jfb-license-data', 'jet_form_builder_settings__options-tab', 'jfb_remote_addons_list', 'update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%get-response-tab';
DELETE FROM wp_options WHERE option_name LIKE '%mailchimp-tab';
DELETE FROM wp_options WHERE option_name LIKE '%active-campaign-tab';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_edit_mode', '_jf_args', '_jet_sm_ready_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_edit_mode', '_jf_args', '_jet_sm_ready_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_edit_mode', '_jf_args', '_jet_sm_ready_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_edit_mode', '_jf_args', '_jet_sm_ready_style');

