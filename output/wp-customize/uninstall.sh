#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_customize_page_title'
wp option delete 'wp_customize_page_name'
wp option delete 'wp_customize_page_id'
wp option delete 'wpcustomize_admin_page_title'
wp option delete 'wpcustomize_admin_logo_image_url'
wp option delete 'wpcustomize_admin_logo_link_url'
wp option delete 'wpcustomize_admin_logo_title'
wp option delete 'wpcustomize_admin_logo_width'
wp option delete 'wpcustomize_admin_logo_height'
wp option delete 'wpcustomize_admin_logo_area_width'
wp option delete 'wpcustomize_admin_logo_area_height'
wp option delete 'wpcustomize_admin_bgcolor'
wp option delete 'wpcustomize_admin_linkcolor'
wp option delete 'wpcustomize_admin_linkhovercolor'
wp option delete 'wpcustomize_admin_loginstyles'
wp option delete 'wpcustomize_admin_footer_contents'
wp option delete 'wpcustomize_hide_register_forgot_links'
wp option delete 'wpcustomize_hide_back_link'
wp option delete 'wpcustomize_show_privacy_policy_link'
wp option delete 'wpcustomize_remember_me_by_default'
wp option delete 'wpcustomize_custom_error_message'
wp option delete 'wpcustomize_remove_login_shake'
wp option delete 'wpcustomize_admin_login_redirect'
wp option delete 'wpcustomize_admin_login_redirect_url'
wp option delete 'wpcustomize_admin_login_background_url'
wp option delete 'wpcustomize_admin_login_background_repeat'
wp option delete 'wpcustomize_admin_login_background_position'
wp option delete 'wpcustomize_admin_login_background_attachment'
wp option delete 'wpcustomize_admin_login_background_size'
wp option delete 'field_name_username'
wp option delete 'field_name_password'
wp option delete 'wpcustomize_admin_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
