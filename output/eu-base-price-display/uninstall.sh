#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'eubaprdi_installed'
wp option delete 'eubaprdi_version'
wp option delete 'eubaprdi_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eubaprdi_override_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eubaprdi_override_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eubaprdi_override_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eubaprdi_override_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eubaprdi_display_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eubaprdi_display_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eubaprdi_display_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eubaprdi_display_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eubaprdi_custom_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eubaprdi_custom_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eubaprdi_custom_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eubaprdi_custom_price'"
