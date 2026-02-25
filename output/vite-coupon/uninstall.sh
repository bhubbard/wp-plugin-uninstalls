#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'woocommerce_prices_include_tax'
wp option delete '_vt_ac'
wp option delete 'apps_bd_ups'
wp option delete 'vc_addons'
wp option delete 'wc_admin_show_legacy_coupon_menu'
wp option delete 'woocommerce_enable_coupons'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
