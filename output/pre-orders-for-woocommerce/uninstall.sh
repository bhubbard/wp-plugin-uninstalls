#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_preorders_avaiable_date_text'
wp option delete 'csf_demo_mode'
wp option delete 'bp_preorder'
wp option delete 'wc_preorders_mode'
wp option delete 'preorder-review-dismiss'
wp option delete 'bp22-dismiss'
wp option delete 'wc_preorders_button_text'
wp option delete 'wc_preorders_status_text'
wp option delete 'woocommerce_preorders_show_general_cart_notice'
wp option delete 'wc_preorders_cart_product_text'
wp option delete 'wc_preorders_badge_text'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp transient delete 'preorder-review-dismiss-temp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Clear Cron Jobs
wp cron event delete 'check_for_released_preorders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_pre_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_pre_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_pre_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_pre_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_order_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preorder_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preorder_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preorder_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preorder_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
