#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'plf_option'
wp option delete 'plf_addon_options'
wp option delete 'plf_queryvars'
wp option delete 'permalink-manager-uris'
wp option delete 'celtis_addon_options'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'plf_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plugin_load_filter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plugin_load_filter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plugin_load_filter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plugin_load_filter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_post_id'"
