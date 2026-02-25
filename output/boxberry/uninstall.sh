#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boxberry_reception_point_notice_active'
wp option delete 'boxberry_deliveries_renamed'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'boxberry_is_export_done'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wiidget_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Clear Cron Jobs
wp cron event delete 'boxberry_update_data_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_boxberry_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_boxberry_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_boxberry_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_boxberry_array'"
