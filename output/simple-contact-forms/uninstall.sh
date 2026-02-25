#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scf_form'
wp option delete 'scf_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'scf_%'"
wp option delete 'scf_table_fields'
wp option delete 'scf_include_bootstrap'
wp option delete 'scf_validation_enable'
wp option delete 'scf_include_recaptcha'
wp option delete 'scf_validation'
wp option delete 'scf_send_to'
wp option delete 'scf_form_title'
wp option delete 'scf_email_subject'
wp option delete 'scf_email_recipients'
wp option delete 'scf_form_styling'
wp option delete 'scf_include_fontawesome'
wp option delete 'scf_submit_text'
wp option delete 'scf_submit_class'
wp option delete 'scf_success_msg'
wp option delete 'scf_valid_fail_text'
wp option delete 'scf_display_button'
wp option delete 'scf_default_collapse'
wp option delete 'scf_button_text'
wp option delete 'scf_button_class'
wp option delete 'scf_button_side'
wp option delete 'scf_button_icon'
wp option delete 'scf_recaptcha_public'
wp option delete 'scf_recaptcha_private'

