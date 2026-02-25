#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'veesing_sms_expire'
wp option delete 'veesing_template_register'
wp option delete 'veesing_sms_debug'
wp option delete 'veesing_sms_logs'
wp option delete 'veesing_sms_account'
wp option delete 'veesing_sms_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
