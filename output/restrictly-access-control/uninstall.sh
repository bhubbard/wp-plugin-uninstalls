#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'restrictly_content_types'
wp option delete 'restrictly_always_allow_admins'
wp option delete 'restrictly_enable_menu_flags'
wp option delete 'restrictly_default_action'
wp option delete 'restrictly_default_message'
wp option delete 'restrictly_default_forward_url'
wp option delete 'restrictly_show_nav_pills'

# Delete Transients
wp transient delete 'restrictly_mismatch_flag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_page_access_by_login_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_page_access_by_login_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_page_access_by_login_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_page_access_by_login_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_page_access_by_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_page_access_by_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_page_access_by_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_page_access_by_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_enforcement_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_enforcement_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_enforcement_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_enforcement_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_custom_forward_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_custom_forward_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_custom_forward_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_custom_forward_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictly_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictly_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictly_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictly_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictly_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictly_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictly_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictly_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_menu_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_menu_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_menu_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_menu_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrictly_menu_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrictly_menu_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrictly_menu_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrictly_menu_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_restrictly_menu_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_restrictly_menu_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_restrictly_menu_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_restrictly_menu_visibility'"
