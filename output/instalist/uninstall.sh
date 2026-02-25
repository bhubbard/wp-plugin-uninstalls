#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plgnr_options'
wp option delete 'pluginer_license_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_plgnr_post_saved_%' OR option_name LIKE '_site_transient_plgnr_post_saved_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plgnr_plugin_slugs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plgnr_plugin_slugs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plgnr_plugin_slugs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plgnr_plugin_slugs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plgnr_plugin_list_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plgnr_plugin_list_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plgnr_plugin_list_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plgnr_plugin_list_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plgnr_plugin_icons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plgnr_plugin_icons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plgnr_plugin_icons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plgnr_plugin_icons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plgnr_plugin_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plgnr_plugin_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plgnr_plugin_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plgnr_plugin_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plgnr_plugin_required_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plgnr_plugin_required_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plgnr_plugin_required_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plgnr_plugin_required_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_primary_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_primary_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_primary_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_primary_list'"
