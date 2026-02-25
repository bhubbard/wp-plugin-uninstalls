#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pciwgas_options'
wp option delete 'pciwgas_sf_optin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pciwgas_categoryimage_%'"
wp option delete 'pciwgas_plugin_version'

# Delete Transients
wp transient delete 'pciwgas_install_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%cat_thumb_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%cat_thumb_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%cat_thumb_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%cat_thumb_id'"
