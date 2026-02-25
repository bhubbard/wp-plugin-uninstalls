#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_chilean_bundle_configuration_options'
wp option delete 'wc_chilean_bundle_about_us_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Rut'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Rut'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Rut'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Rut'"
