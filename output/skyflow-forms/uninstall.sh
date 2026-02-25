#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skyflow_forms_unsub_page_id'
wp option delete 'skyflow_forms_label_placement'
wp option delete 'skyflow_forms_help_placement'
wp option delete 'skyflow_forms_error_placement'
wp option delete 'skyflow_forms_success_placement'
wp option delete 'skyflow_forms_validation_messages'
wp option delete 'skyflow_forms_recaptcha_enabled'
wp option delete 'skyflow_forms_recaptcha_site_key'
wp option delete 'skyflow_forms_recaptcha_secret_key'
wp option delete 'skyflow_forms_recaptcha_version'
wp option delete 'skyflow_forms_hcaptcha_enabled'
wp option delete 'skyflow_forms_hcaptcha_site_key'
wp option delete 'skyflow_forms_hcaptcha_secret_key'
wp option delete 'skyflow_forms_hcaptcha_theme'
wp option delete 'skyflow_forms_email_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_skyflow_forms_errors_%' OR option_name LIKE '_site_transient_skyflow_forms_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_skyflow_forms_values_%' OR option_name LIKE '_site_transient_skyflow_forms_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_skyflow_forms_email_meta_%' OR option_name LIKE '_site_transient_skyflow_forms_email_meta_%'"

