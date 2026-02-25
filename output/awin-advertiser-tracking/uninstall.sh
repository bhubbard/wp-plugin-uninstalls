#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'awin_settings'

# Clear Cron Jobs
wp cron event delete 'generate_product_feed_event'
wp cron event delete 'awin_approve_orders_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awin_conversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awin_conversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awin_conversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awin_conversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awin_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awin_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awin_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awin_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awin_sent_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awin_sent_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awin_sent_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awin_sent_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pinterest_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pinterest_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pinterest_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pinterest_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_model_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_model_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_model_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_model_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_promotional_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_promotional_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_promotional_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_promotional_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_warranty'"
