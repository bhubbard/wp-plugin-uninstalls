-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfef_usage_share_data', 'cfkef_enabled_elements', 'fme-installDate', 'cfef-installDate', 'cfefp-installDate', 'ccfef-installDate', 'oldest_plugin', 'conditional-fields-install-by', 'cfkef_toggle_all', 'country_code', 'conditional_logic', 'form_input_mask', 'input_mask', 'cfkef_enable_elementor_pro_form', 'cfef_plugin_initialized', 'cfef_migrate_done', 'condtional_logic', 'ccfef_plugin_initialized', 'ccfef_migrate_done', 'fme_plugin_initialized', 'fme_migrate_done', 'conditional_fields_initial_version', 'cfef-install-date', 'cfef_formdb_marketing_dismissed', 'cfef_marketing_dismissed', 'ccfef_tec_notice_dismissed', 'cfef_tec_notice_dismissed', 'cpfm_opt_in_choice_cool_forms', 'cfkef_geo_provider', 'cfkef_country_code_api_key', 'cfkef_country_code_non_ipapi_api_key', 'cfefp_redirect_conditionally', 'cfefp_email_conditionally', 'cfefp_cdn_image', 'cfefp_cloudflare_site_key', 'cfefp_cloudflare_secret_key', 'cfefp_h_site_key', 'cfefp_h_secret_key', 'cfef-v', 'cfef-type', 'cfef_elementor_notice_dismiss');
DELETE FROM wp_options WHERE option_name LIKE '%-install-by';

