#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'welight_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'welight_changed_order_status:%'"
wp option delete 'welight_sandbox'
wp option delete 'welight_api_key'
wp option delete 'welight_api_username'
wp option delete 'welight_store_name'
wp option delete 'welight_donation_tax'
wp option delete 'welight_style_display_ong'
wp option delete 'welight_text_checkout'
wp option delete 'welight_text_cart'

# Clear Cron Jobs
wp cron event delete 'welightei_cleanup_expired_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cart_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cart_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cart_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cart_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cart_totals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cart_totals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cart_totals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cart_totals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer'"
