#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_extension_profiles_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extension_profiles_plugins'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extension_profiles_plugins'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extension_profiles_plugins'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extension_profiles_plugins'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extension_profiles_active_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extension_profiles_active_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extension_profiles_active_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extension_profiles_active_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extension_profiles_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extension_profiles_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extension_profiles_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extension_profiles_token'"
