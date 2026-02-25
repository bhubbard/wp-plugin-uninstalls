#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_vc_setting_option_name'

# Clear Cron Jobs
wp cron event delete 'wpvc_coupon_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vc_unique_promo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vc_unique_promo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vc_unique_promo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vc_unique_promo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%coupon-code-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%coupon-code-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%coupon-code-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coupon-code-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%deal-button-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%deal-button-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%deal-button-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%deal-button-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%coupon-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%coupon-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%coupon-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coupon-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%discount-text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%discount-text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%discount-text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%discount-text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%hide-coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%hide-coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%hide-coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hide-coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%show-expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%show-expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%show-expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%show-expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%expire-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%expire-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%expire-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%expire-date'"
