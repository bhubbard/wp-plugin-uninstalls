#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_variable_defaults_v101_upgraded'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_variable_default_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_variable_default_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_variable_default_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_variable_default_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_variable_default_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_variable_default_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_variable_default_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_variable_default_price'"
