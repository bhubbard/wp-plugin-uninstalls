#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce-elite-licenser-addon_o_EL_WOOCommerceAddon'
wp option delete 'wel_addons_time'
wp option delete 'wel_addons'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'el_mapped_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'el_mapped_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'el_mapped_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'el_mapped_product'"
