#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fssc_use_data'
wp option delete '_fssc_advanced_settings'
wp option delete '_fssc_schema_main_settings'
wp option delete '_fssc_licence_settings'
wp option delete '_fssc_server_url'
wp option delete '_fspi_server_url'
wp option delete 'woocommerce_currency'
wp option delete 'fs_schema_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fssc_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fssc_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fssc_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fssc_%'"
