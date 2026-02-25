#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'factory_plugin_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%assets_manager_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%for_admin_only'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%assets_states'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%deactive_preinstall_components'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%backend_assets_states'"

# Delete Transients
wp transient delete 'wbcr_factory_google_fonts'
wp transient delete 'wbcr_factory_google_fonts_raw'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wgz_farewell_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wgz_farewell_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wgz_farewell_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wgz_farewell_dismissed'"
