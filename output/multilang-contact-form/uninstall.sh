#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mlcf_delete_options'
wp option delete 'mlcf_email'
wp option delete 'mlcf_subject'
wp option delete 'mlcf_email_from'
wp option delete 'mlcf_success_message'
wp option delete 'mlcf_error_message'
wp option delete 'mlcf_error_wrong_mail'
wp option delete 'mlcf_field_name'
wp option delete 'mlcf_field_email'
wp option delete 'mlcf_field_subject'
wp option delete 'mlcf_field_www'
wp option delete 'mlcf_field_message'
wp option delete 'mlcf_field_required'
wp option delete 'mlcf_field_submit'
wp option delete 'mlcf_recaptcha_enabled'
wp option delete 'mlcf_recaptcha_private'
wp option delete 'mlcf_recaptcha_public'
wp option delete 'mlcf_recaptcha_error_msg'
wp option delete 'mlcf_delete_Options'

