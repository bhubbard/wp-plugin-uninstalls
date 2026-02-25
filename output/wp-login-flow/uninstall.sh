#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplf_show_admin_bar_only_admins'
wp option delete 'wplf_lostpassword_subject'
wp option delete 'wplf_lostpassword_message'
wp option delete 'wplf_logo_url'
wp option delete 'wplf_logo_url_title'
wp option delete 'wplf_bg_color'
wp option delete 'wplf_link_color'
wp option delete 'wplf_link_hover_color'
wp option delete 'wplf_font_color'
wp option delete 'wplf_custom_css'
wp option delete 'wplf_login_box_responsive'
wp option delete 'wplf_login_box_bg_color'
wp option delete 'wplf_login_box_color'
wp option delete 'wplf_login_box_border_radius_enable'
wp option delete 'wplf_login_box_border_radius'
wp option delete 'wplf_logo'
wp option delete 'wplf_register_loader'
wp option delete 'wplf_login_loader'
wp option delete 'wplf_from_email_enable'
wp option delete 'wplf_from_email'
wp option delete 'wplf_from_name_enable'
wp option delete 'wplf_from_name'
wp option delete 'wplf_require_activation'
wp option delete 'wplf_register_set_pw'
wp option delete 'wplf_auto_login'
wp option delete 'wplf_registration_email_as_un'
wp option delete 'wplf_registration_custom_fields'
wp option delete 'wplf_auto_disable_rewrites'
wp option delete 'wplf_nginx_enable'
wp option delete 'wplf_rewrite_reset_pw_slug'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slug'"
wp option delete 'default_post_edit_rows'
wp option delete 'wplf_rewrite_activate'
wp option delete 'wplf_rewrite_activate_slug'
wp option delete 'wplf_uninstall_remove_options'
wp option delete 'WP_LOGIN_FLOW_VERSION'
wp option delete 'WP_LOGIN_MS_NOTICE'
wp option delete 'WP_LOGIN_NGINX_NOTICE'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_signup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_signup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_signup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_signup'"
