#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wlwcn_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_in_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_in_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_in_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_in_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail_from_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail_from_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail_from_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail_from_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail_replyto_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail_replyto_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail_replyto_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail_replyto_address'"
