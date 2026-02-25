-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redux_builder_amp', 'mc4wp_integrations', 'iubenda_activation_data', 'status', 'iubenda_consent_forms', 'iubenda_radar_api_configuration', 'iubenda_cookie_law_version', 'iubenda_cookie_law_solution', 'iubenda_activated_products', 'show_comments_cookies_opt_in', 'iubenda_api_key', 'iubenda_last_radar_run', 'iubenda_privacy_policy_solution', 'iubenda_terms_conditions_solution', 'iubenda_consent_solution', 'iubenda_global_options', 'iubenda_cs_page_configuration', 'iubenda_pp_page_configuration', 'iubenda_quick_generator_response', 'iubenda_tc_page_configuration', 'iubenda_radar_api_response', 'iub_activation_completed', 'iub_upgrade_completed');
DELETE FROM wp_options WHERE option_name LIKE 'iubenda-code-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iub_form_source', '_iub_object_type', '_iub_object_id', '_iub_form_fields', '_iub_form_subject', '_iub_form_preferences', '_iub_form_exclude', '_iub_form_legal_notices', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iub_form_source', '_iub_object_type', '_iub_object_id', '_iub_form_fields', '_iub_form_subject', '_iub_form_preferences', '_iub_form_exclude', '_iub_form_legal_notices', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iub_form_source', '_iub_object_type', '_iub_object_id', '_iub_form_fields', '_iub_form_subject', '_iub_form_preferences', '_iub_form_exclude', '_iub_form_legal_notices', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iub_form_source', '_iub_object_type', '_iub_object_id', '_iub_form_fields', '_iub_form_subject', '_iub_form_preferences', '_iub_form_exclude', '_iub_form_legal_notices', '_elementor_data');

