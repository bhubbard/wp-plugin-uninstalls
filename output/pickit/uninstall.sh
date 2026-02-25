#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-pickit-%'"

# Clear Cron Jobs
wp cron event delete 'wc_pickit_cron_update_points'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_pickit_fiscal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_pickit_fiscal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_pickit_fiscal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_pickit_fiscal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_pickit_fiscal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_pickit_fiscal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_pickit_fiscal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_pickit_fiscal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_wc_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_wc_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_wc_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_wc_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_wc_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_wc_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_wc_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_wc_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_wc_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_wc_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_wc_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_wc_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_wc_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_wc_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_wc_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_wc_lng'"
