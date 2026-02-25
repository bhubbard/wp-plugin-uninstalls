#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PO_saved_plugin_order'
wp option delete 'PO_disable_plugins_mobile'
wp option delete 'PO_custom_post_type_support'
wp option delete 'PO_pt_stored'
wp option delete 'PO_mobile_user_agents'
wp option delete 'PO_disable_compat_notices'
wp option delete 'PO_disable_admin_warning'
wp option delete 'PO_disable_admin_notices'
wp option delete 'PO_custom_css'
wp option delete 'PO_fuzzy_url_matching'
wp option delete 'PO_ignore_protocol'
wp option delete 'PO_ignore_arguments'
wp option delete 'PO_order_access_net_admin'
wp option delete 'PO_auto_trailing_slash'
wp option delete 'PO_enabled_roles'
wp option delete 'PO_debug_roles'
wp option delete 'PO_disable_plugins_frontend'
wp option delete 'PO_disable_plugins_admin'
wp option delete 'PO_disable_plugins_by_role'
wp option delete 'PO_display_debug_msg'
wp option delete 'active_sitewide_plugins'
wp option delete 'PO_version_num'
wp option delete 'PO_old_posts_moved'
wp option delete 'PO_disabled_plugins'
wp option delete 'PO_disabled_mobile_plugins'
wp option delete 'PO_disabled_groups'
wp option delete 'PO_disabled_mobile_groups'
wp option delete 'PO_disabled_search_plugins'
wp option delete 'PO_enabled_search_plugins'
wp option delete 'PO_disabled_mobile_search_plugins'
wp option delete 'PO_enabled_mobile_search_plugins'
wp option delete 'PO_disabled_search_groups'
wp option delete 'PO_enabled_search_groups'
wp option delete 'PO_disabled_mobile_search_groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_disabled_pt_plugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_enabled_pt_plugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_disabled_mobile_pt_plugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_enabled_mobile_pt_plugins_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_disabled_pt_groups_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_enabled_pt_groups_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_disabled_mobile_pt_groups_%'"
wp option delete 'PO_updating_plugin'
wp option delete 'PO_admin_styles'
wp option delete 'PO_old_urls_moved'
wp option delete 'PO_old_groups_moved'
wp option delete 'PO_preserve_settings'
wp option delete 'PO_group_members_corrected'
wp option delete 'PO_admin_disable_plugins'
wp option delete 'PO_disable_by_role'
wp option delete 'PO_disable_mobile_plugins'
wp option delete 'PO_disable_plugins'
wp option delete 'PO_plugin_order'
wp option delete 'PO_default_group'
wp option delete 'PO_alternate_admin'
wp option delete 'PO_network_active_plugins_color'
wp option delete 'PO_enabled_mobile_search_groups'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'PO_enabled_mobile_pt_groups_%'"

# Delete Transients
wp transient delete 'PO_delete_missing_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_group_members'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_group_members'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_group_members'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_group_members'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_enabled_mobile_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_enabled_mobile_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_enabled_mobile_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_enabled_mobile_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_disabled_mobile_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_disabled_mobile_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_disabled_mobile_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_disabled_mobile_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_enabled_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_enabled_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_enabled_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_enabled_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_disabled_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_disabled_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_disabled_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_disabled_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_affect_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_affect_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_affect_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_affect_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_PO_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_PO_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_PO_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_PO_permalink'"
