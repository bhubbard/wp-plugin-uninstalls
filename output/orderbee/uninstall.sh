#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obfrwc_server_auth_id'
wp option delete 'obfrwc_server_username'
wp option delete 'obfrwc_server_password'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'obfrwc_every_5minutes_products'
wp cron event delete 'obfrwc_every_5minutes_orders'
wp cron event delete 'obfrwc_every_60minutes'
wp cron event delete 'obfrwc_every_5minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
