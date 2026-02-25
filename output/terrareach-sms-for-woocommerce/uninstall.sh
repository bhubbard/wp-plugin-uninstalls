#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sender_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_sms_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sms_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_notes_sms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%note_sms_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_admin_sms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_sms_recipients'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin_sms_template'"

