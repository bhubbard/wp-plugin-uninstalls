#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedaty-merchant-code'
wp option delete 'feedaty-client-secret'
wp option delete 'fdOrderStatus'
wp option delete 'feedaty-prod-microdata-enabled'
wp option delete 'feedaty-prod-tab-enabled'
wp option delete 'wid-store-enabled'
wp option delete 'wid-store-style'
wp option delete 'prod-enabled'
wp option delete 'prod-position'
wp option delete 'product-badge-style'

# Delete Transients
wp transient delete 'debug-acme'

# Clear Cron Jobs
wp cron event delete 'feedaty_cron_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedaty_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedaty_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedaty_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedaty_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedaty_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedaty_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedaty_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedaty_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedaty_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedaty_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedaty_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedaty_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedaty_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedaty_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedaty_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedaty_url'"
