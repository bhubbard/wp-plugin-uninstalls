#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shoutout_sms_woo_send_sms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sms_template'"
wp option delete 'shoutout_sms_woo_default_sms_template'
wp option delete 'shoutout_sms_woo_auth_token'
wp option delete 'shoutout_sms_woo_from_number'
wp option delete 'shoutout_sms_woo_enable_admin_sms'
wp option delete 'shoutout_sms_woo_admin_sms_template'
wp option delete 'shoutout_sms_woo_admin_sms_recipients'

