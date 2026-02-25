#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mighty_rfd_basic_configuration'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'activate_mighty_rfd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_triggering_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_triggering_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_triggering_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_triggering_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_coupon_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_coupon_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_coupon_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_coupon_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_expire_after_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_expire_after_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_expire_after_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_expire_after_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_single_use_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_single_use_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_single_use_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_single_use_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mighty_individual_use_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mighty_individual_use_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mighty_individual_use_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mighty_individual_use_only'"
