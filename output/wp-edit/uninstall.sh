#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_edit_global'
wp option delete 'wp_edit_general'
wp option delete 'wp_edit_posts'
wp option delete 'jwl_toggle_wpautop_settings'
wp option delete 'wp_edit_editor'
wp option delete 'wp_edit_extras'
wp option delete 'wp_edit_user_dashboard_options'
wp option delete 'wp_edit_buttons'
wp option delete 'wp_edit_activation_redirect'
wp option delete 'wp_edit_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwl_disable_wpautop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwl_disable_wpautop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwl_disable_wpautop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwl_disable_wpautop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aaa_wp_edit_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aaa_wp_edit_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aaa_wp_edit_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aaa_wp_edit_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_wpedit_ag_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_wpedit_ag_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_wpedit_ag_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_wpedit_ag_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_wpedit_custom_buttons_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_wpedit_custom_buttons_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_wpedit_custom_buttons_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_wpedit_custom_buttons_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
