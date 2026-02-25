#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtmkit_wizard_setup_complete_2.0'
wp option delete 'rtmkit_version'
wp option delete 'rtmkit_redirect_wizard'
wp option delete 'elementor_active_kit'
wp option delete 'rtm_extensions'
wp option delete 'rtm_template_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtm_import_template_%'"
wp option delete 'rtm_modules'
wp option delete 'rtm_modules_pro'
wp option delete 'rtmpro-license-key'
wp option delete 'rtmpro-license-activation '
wp option delete 'rkit-widget-options'
wp option delete 'rform-widget-options'
wp option delete 'rkit-widget-pro-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtm_token_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtm_token_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtm_token_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtm_token_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtm_token_refresh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtm_token_refresh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtm_token_refresh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtm_token_refresh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rform-entri-form-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rform-entri-referal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rometheme_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rometheme_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rometheme_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rometheme_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rometheme_template_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rometheme_template_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rometheme_template_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rometheme_template_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rometheme_template_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rometheme_template_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rometheme_template_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rometheme_template_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_form_success_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_form_success_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_form_success_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_form_success_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_form_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_form_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_form_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_form_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_email_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_email_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_email_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_email_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_email_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_email_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_email_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_email_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtform_form_entry_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtform_form_entry_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtform_form_entry_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtform_form_entry_title'"
