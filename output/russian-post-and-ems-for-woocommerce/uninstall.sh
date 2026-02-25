#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpaefw_ops_index'
wp option delete 'woocommerce_store_postcode'
wp option delete 'rpaefw_dogovor'
wp option delete 'woocommerce_currency'
wp option delete 'woocs'
wp option delete 'rpaefw_hide_info_log'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'rpaefw_use_auto_email_tracking_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_tracking_number'"
