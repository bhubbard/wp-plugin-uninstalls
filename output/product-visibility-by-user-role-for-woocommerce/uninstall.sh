#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_pvbur_user_roles_for_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pvbur_bulk_visible_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pvbur_bulk_invisible_products_%'"
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_pvbur_enabled'
wp option delete 'alg_wc_pvbur_visibility'
wp option delete 'alg_wc_pvbur_purchasable'
wp option delete 'alg_wc_pvbur_add_column_visible_user_roles'
wp option delete 'alg_wc_pvbur_add_to_quick_edit'
wp option delete 'alg_wc_pvbur_query'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_pvbur_version'

# Delete Transients
wp transient delete 'awcpvbur_all_pids'

