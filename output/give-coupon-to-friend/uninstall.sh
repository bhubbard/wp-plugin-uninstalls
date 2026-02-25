#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gctf_text_coupon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email_creator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email_creator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email_creator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email_creator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_email_creator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_email_creator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_email_creator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_email_creator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generated_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generated_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generated_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generated_coupon'"
