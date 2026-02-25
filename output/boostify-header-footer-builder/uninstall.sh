#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_permalinks_flushed'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'woocommerce_cart_redirect_after_add'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_no_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_no_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_no_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_no_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_ex_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_ex_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_ex_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_ex_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bhf_ex_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bhf_ex_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bhf_ex_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bhf_ex_post'"
