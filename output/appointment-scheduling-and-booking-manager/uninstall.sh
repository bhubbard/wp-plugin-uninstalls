#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'eav_slot_duration'
wp option delete 'eav_smtp_host'
wp option delete 'eav_smtp_username'
wp option delete 'eav_smtp_password'
wp option delete 'eav_smtp_port'
wp option delete 'eav_smtp_email'
wp option delete 'eav_slot_price'
wp option delete 'eav_slot_start'
wp option delete 'eav_slot_end'
wp option delete 'eav_paypal_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eav_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eav_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eav_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eav_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eav_user_paypal_sign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eav_user_paypal_sign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eav_user_paypal_sign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eav_user_paypal_sign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eav_user_paypal_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eav_user_paypal_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eav_user_paypal_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eav_user_paypal_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eav_user_paypal_paswd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eav_user_paypal_paswd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eav_user_paypal_paswd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eav_user_paypal_paswd'"
