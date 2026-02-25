-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wfb_clippy_first', '_qcformbuilder_forms_styleincludes', '_qcformbuilder_forms_entry_perpage', 'qcformbuilder_forms_api_token_secret', 'sidebars_widgets', 'widget_qcformbuilder_forms_widget', 'WFB_DB', '_qcformbuilderforms_lastupdate', 'wordpress_api_key', '_qcformbuilder_forms_tracking_allowed', '_qcformbuilder_forms', '_qcformbuilder_forms_forms', 'qlcd_wp_chatbot_admin_email', 'qlcd_wp_chatbot_conversation_details', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qcformbuilder_forms_activation_ignore_notice', 'wfb_pointer_add_element');
DELETE FROM wp_usermeta WHERE meta_key IN ('qcformbuilder_forms_activation_ignore_notice', 'wfb_pointer_add_element');
DELETE FROM wp_termmeta WHERE meta_key IN ('qcformbuilder_forms_activation_ignore_notice', 'wfb_pointer_add_element');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qcformbuilder_forms_activation_ignore_notice', 'wfb_pointer_add_element');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wfb_pointer_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wfb_pointer_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wfb_pointer_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wfb_pointer_%';

