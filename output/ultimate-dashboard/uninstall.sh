#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udb_compat_old_option'
wp option delete 'udb_settings'
wp option delete 'removeallwidgets'
wp option delete 'welcome'
wp option delete 'primary'
wp option delete 'quickpress'
wp option delete 'rightnow'
wp option delete 'activity'
wp option delete 'incominglinks'
wp option delete 'plugins'
wp option delete 'secondary'
wp option delete 'drafts'
wp option delete 'comments'
wp option delete 'udb_compat_widget_type'
wp option delete 'udb_compat_widget_status'
wp option delete 'udb_compat_settings_meta'
wp option delete 'udb_pro_settings'
wp option delete 'udb_compat_delete_login_customizer_page'
wp option delete 'udb_modules'
wp option delete 'udb_plugin_activated'
wp option delete 'udb_install_date'
wp option delete 'udb_migration_from_erident'
wp option delete 'udb_onboarding_wizard_completed'
wp option delete 'udb_onboarding_wizard_redirect'
wp option delete 'udb_referred_by_kirki'
wp option delete 'review_notice_dismissed'
wp option delete 'udb_bfcm_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'udb_bfcm_notice_dismissed_%'"
wp option delete 'udb_bfcm_notice_dismissed_2025'
wp option delete 'udb_multisite_blueprint'
wp option delete 'udb_branding'
wp option delete 'udb_login'
wp option delete 'udb_login_redirect'
wp option delete 'udb_import'
wp option delete 'udb_recent_admin_menu'
wp option delete 'udb_login_customizer_flush_url'
wp option delete 'udb_admin_bar'
wp option delete 'udb_admin_menu'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'udb_%'"
wp option delete 'admin_email_lifespan'
wp option delete 'udb_export'
wp option delete 'ultimate_dashboard_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_widget_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_widget_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_widget_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_widget_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_is_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_is_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_is_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_is_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_menu_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_menu_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_menu_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_menu_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_menu_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_menu_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_menu_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_menu_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_menu_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_custom_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_custom_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_custom_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_custom_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_html_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_html_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_html_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_html_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_allowed_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_allowed_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_allowed_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_allowed_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_remove_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_remove_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_remove_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_remove_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_remove_page_margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_remove_page_margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_remove_page_margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_remove_page_margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_remove_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_remove_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_remove_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_remove_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_icon_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_icon_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_icon_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_icon_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_position_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_position_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_position_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_position_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_priority_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_priority_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_priority_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_priority_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'udb_content_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'udb_content_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'udb_content_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'udb_content_height'"
