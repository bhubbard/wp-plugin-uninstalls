#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'b2bking_plugin_status_setting'
wp option delete 'b2bking_current_tab_setting'
wp option delete 'b2bking_guest_access_restriction_setting'
wp option delete 'b2bking_hide_prices_guests_text_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_dismiss_activate_woocommerce_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_dismiss_activate_woocommerce_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_dismiss_activate_woocommerce_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_dismiss_activate_woocommerce_notice'"
