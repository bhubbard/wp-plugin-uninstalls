#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete 'visidea_plugin_options'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_feed_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_feed_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_feed_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_feed_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
