#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lf_recaptcha_v3_site_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'lf_custom_css'
wp option delete 'lf_authorization_token'
wp option delete 'lf_disclaimer_text'
wp option delete 'lf_google_analytics_id'
wp option delete 'lf_grow_region'
wp option delete 'lf_recaptcha_v3_secret_key'
wp option delete 'lf_recaptcha_site_key'
wp option delete 'lf_recaptcha_secret_key'
wp option delete 'lf_thankyou_uri'
wp option delete 'lf_successful_submit_message'
wp option delete 'lf_domain_blacklist'
wp option delete 'lf_form_heading'
wp option delete 'lf_firstname_field_label'
wp option delete 'lf_firstname_placeholder_label'
wp option delete 'lf_lastname_field_label'
wp option delete 'lf_lastname_placeholder_label'
wp option delete 'lf_email_field_label'
wp option delete 'lf_email_placeholder_label'
wp option delete 'lf_phone_field_label'
wp option delete 'lf_phone_placeholder_label'
wp option delete 'lf_message_field_label'
wp option delete 'lf_message_placeholder_label'
wp option delete 'lf_submit_button_text'
wp option delete 'lf_submit_button_color'
wp option delete 'lf_submit_button_text_color'

