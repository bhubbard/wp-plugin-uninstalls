#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_epayco_settings'
wp option delete 'epayco_order_status'
wp option delete 'woocommerce_manage_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Clear Cron Jobs
wp cron event delete 'woocommerc_epayco_cron_hook'
wp cron event delete 'woocommerce_epayco_cleanup_draft_orders'
wp cron event delete 'bf_epayco_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'My Field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refPayco'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refPayco'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refPayco'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refPayco'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fecha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fecha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fecha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fecha'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'franquicia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'franquicia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'franquicia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'franquicia'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autorizacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autorizacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autorizacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autorizacion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_enumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_enumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_enumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_enumber'"
