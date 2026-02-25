#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'nexron_ai_chat_organization_id'
wp option delete 'nexron_ai_chat_uid'
wp option delete 'nexron_ai_chat_product_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nexron_ai_chat_original_product_id_%' OR option_name LIKE '_site_transient_nexron_ai_chat_original_product_id_%'"

# Clear Cron Jobs
wp cron event delete 'nexron_ai_chat_daily_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_update_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_update_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_update_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_update_processed'"
