#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_footer_text'
wp option delete 'sms_username'
wp option delete 'sms_password'
wp option delete 'rem_sms_credit'
wp option delete 'all_msg_send'
wp option delete 'day_msg_stat'
wp option delete 'sms_server_status'
wp option delete 'sms_server_msg'
wp option delete 'SMSUsername'
wp option delete 'SMSPassword'

