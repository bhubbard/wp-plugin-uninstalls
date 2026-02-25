-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtmkit_wizard_setup_complete_2.0', 'rtmkit_version', 'rtmkit_redirect_wizard', 'elementor_active_kit', 'rtm_extensions', 'rtm_template_installed', 'rtm_modules', 'rtm_modules_pro', 'rtmpro-license-key', 'rtmpro-license-activation ', 'rkit-widget-options', 'rform-widget-options', 'rkit-widget-pro-options');
DELETE FROM wp_options WHERE option_name LIKE 'rtm_import_template_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'rtm_token_access', 'rtm_token_refresh', 'rform-entri-form-id', 'rform-entri-referal', '_elementor_edit_mode', '_elementor_template_type', 'rometheme_template_type', 'rometheme_template_active', 'rometheme_template_condition', 'rtform_shortcode', 'rtform_form_success_message', 'rtform_form_restricted', 'rtform_email_confirmation', 'rtform_email_notification', 'rtform_form_entry_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'rtm_token_access', 'rtm_token_refresh', 'rform-entri-form-id', 'rform-entri-referal', '_elementor_edit_mode', '_elementor_template_type', 'rometheme_template_type', 'rometheme_template_active', 'rometheme_template_condition', 'rtform_shortcode', 'rtform_form_success_message', 'rtform_form_restricted', 'rtform_email_confirmation', 'rtform_email_notification', 'rtform_form_entry_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'rtm_token_access', 'rtm_token_refresh', 'rform-entri-form-id', 'rform-entri-referal', '_elementor_edit_mode', '_elementor_template_type', 'rometheme_template_type', 'rometheme_template_active', 'rometheme_template_condition', 'rtform_shortcode', 'rtform_form_success_message', 'rtform_form_restricted', 'rtform_email_confirmation', 'rtform_email_notification', 'rtform_form_entry_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'rtm_token_access', 'rtm_token_refresh', 'rform-entri-form-id', 'rform-entri-referal', '_elementor_edit_mode', '_elementor_template_type', 'rometheme_template_type', 'rometheme_template_active', 'rometheme_template_condition', 'rtform_shortcode', 'rtform_form_success_message', 'rtform_form_restricted', 'rtform_email_confirmation', 'rtform_email_notification', 'rtform_form_entry_title');

