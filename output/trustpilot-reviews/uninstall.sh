#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustpilot_settings'
wp option delete 'trustpilot_page_urls'
wp option delete 'trustpilot_custom_TrustBoxes'
wp option delete 'show_past_orders_initial'
wp option delete 'sync_in_progress'
wp option delete 'past_orders'
wp option delete 'failed_orders'
wp option delete 'trustpilot_just_installed'
wp option delete 'trustpilot_past_orders'
wp option delete 'trustpilot_failed_orders'
wp option delete 'trustpilot_plugin_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
