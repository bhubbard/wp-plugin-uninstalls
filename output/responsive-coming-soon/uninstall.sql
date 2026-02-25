-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsm_rcs_plugin_options_dashboard', 'wpsm_rcs_plugin_options_templates', 'wpsm_rcs_plugin_options_general', 'wpsm_rcs_plugin_options_header', 'wpsm_rcs_plugin_options_countdown', 'wpsm_rcs_plugin_options_background', 'wpsm_rcs_plugin_options_text_and_color', 'wpsm_rcs_plugin_options_custom_css', 'wpsm_rcs_plugin_options_social', 'wpsm_rcs_plugin_options_about_us', 'wpsm_rcs_plugin_options_contact_us', 'wpsm_rcs_plugin_options_newsletter', 'wpsm_rcs_plugin_options_subscription_field', 'wpsm_rcs_review');

