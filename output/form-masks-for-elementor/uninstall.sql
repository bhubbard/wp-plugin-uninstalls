-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fme-installDate', 'cfef-installDate', 'cfefp-installDate', 'ccfef-installDate', 'oldest_plugin', 'form-masks-install-by', 'cfkef_enabled_elements', 'cfkef_toggle_all', 'country_code', 'conditional_logic', 'form_input_mask', 'input_mask', 'cfkef_enable_elementor_pro_form', 'ccfef_plugin_initialized', 'ccfef_migrate_done', 'fme_plugin_initialized', 'fme_migrate_done', 'mfe_plugin_initialized', 'mfe_migrate_done', 'fme-install-date', 'fme-v', 'cfef_usage_share_data', 'fme_marketing_dismissed', 'fme_tec_notice_dismissed', 'cpfm_opt_in_choice_cool_forms', 'cfkef_geo_provider', 'cfkef_country_code_api_key', 'cfkef_country_code_non_ipapi_api_key', 'cfefp_redirect_conditionally', 'cfefp_email_conditionally', 'cfefp_cdn_image', 'cfefp_cloudflare_site_key', 'cfefp_cloudflare_secret_key', 'cfefp_h_site_key', 'cfefp_h_secret_key', 'fme-type', 'fme_elementor_notice_dismiss');
DELETE FROM wp_options WHERE option_name LIKE '%-install-by';

