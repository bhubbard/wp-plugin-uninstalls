#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smtp_error_log'
wp option delete 'MAIL_BABY_SMTP_options'
wp option delete '_wp_mailplus_from_info'
wp option delete '_wp_mailplus_enabled_service'
wp option delete 'sib_use_apiv2'
wp option delete 'sib_old_form_id'
wp option delete 'mailgun'
wp option delete '_wp_mailplus_service_info'
wp option delete 'sib_subscription_option'
wp option delete 'sib_signup_option'
wp option delete 'sib_confirm_option'
wp option delete 'sib_home_option'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_credit_%' OR option_name LIKE '_site_transient_sib_credit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_smtp_status_%' OR option_name LIKE '_site_transient_sib_smtp_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_attributes_%' OR option_name LIKE '_site_transient_sib_attributes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_template_%' OR option_name LIKE '_site_transient_sib_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_list_%' OR option_name LIKE '_site_transient_sib_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_senders_%' OR option_name LIKE '_site_transient_sib_senders_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_totalusers_%' OR option_name LIKE '_site_transient_sib_totalusers_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sib_campaigns_%' OR option_name LIKE '_site_transient_sib_campaigns_%'"
wp transient delete 'mbs_test_email_status'
wp transient delete 'mbs_test_email_debug_log'

