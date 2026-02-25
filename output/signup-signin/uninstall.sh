#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forgot_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forgot_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forgot_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forgot_email'"
