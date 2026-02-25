-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ilcc_policy_url', 'ilcc_title', 'ilcc_text', 'ilcc_button', 'ilcc_only_necessary_text', 'ilcc_configure_settings_text', 'ilcc_style', 'ilcc_settings_necessary_heading', 'ilcc_settings_necessary_description', 'ilcc_settings_marketing_heading', 'ilcc_settings_marketing_description', 'ilcc_settings_analytics_heading', 'ilcc_settings_analytics_description', 'ilcc_save_settings_text', 'ilcc_settings_title', 'ilcc_settings_description', 'ilcc_settings_analytics_is_shown', 'ilcc_settings_marketing_is_shown', 'ilcc_domains_necessary', 'ilcc_domains_analytics', 'ilcc_domains_marketing');

