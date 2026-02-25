#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ez_google_client_id'
wp option delete 'ez_google_client_secret'
wp option delete 'ez_sms_username'
wp option delete 'ez_sms_password'
wp option delete 'ez_sms_number'
wp option delete 'ez_sms_timer_duration'
wp option delete 'ez_sms_max_attempts'
wp option delete 'ez_sms_block_duration'
wp option delete 'ez_sms_send_mode'
wp option delete 'ez_sms_pattern_code'
wp option delete 'ez_sms_provider'
wp option delete 'ezlogin_custom_css'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ez_sms_blocked_until_%' OR option_name LIKE '_site_transient_ez_sms_blocked_until_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ez_sms_last_otp_%' OR option_name LIKE '_site_transient_ez_sms_last_otp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ez_sms_otp_%' OR option_name LIKE '_site_transient_ez_sms_otp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ez_sms_test_otp_%' OR option_name LIKE '_site_transient_ez_sms_test_otp_%'"

