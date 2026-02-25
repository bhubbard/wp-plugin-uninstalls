-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwp_dcc_klaviyo_connected', 'mwp_dcc_klaviyo_list', 'mwp_dcc_zapier_connected', 'mwp_dcc_notifications_email', 'mwp_dcc_plugin_version', 'mwp_dcc_klaviyo_list_id', 'mwp_dcc_form_title_text', 'mwp_dcc_form_title_align', 'mwp_dcc_results_view', 'mwp_dcc_units_system', 'mwp_dcc_user_agreement', 'mwp_dcc_privacy_policy_url', 'mwp_dcc_terms_url', 'mwp_dcc_user_agreement_text', 'mwp_dcc_layout_rounded', 'mwp_dcc_activity_list_type', 'mwp_dcc_custom_style', 'mwp_dcc_primary_color', 'mwp_dcc_klaviyo', 'mwp_dcc_klaviyo_api_key', 'mwp_dcc_zapier', 'mwp_dcc_zapier_api_key');
DELETE FROM wp_options WHERE option_name LIKE 'mwp_dcc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_connected';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';

