#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmdc_login_logo'
wp option delete 'mmdc_login_bg'
wp option delete 'mmdc_login_logo_url'
wp option delete 'mmdc_login_logo_title'
wp option delete 'mmdc_login_bg_color'
wp option delete 'mmdc_login_message'
wp option delete 'mmdc_login_message_color'
wp option delete 'mmdc_login_btn_color'
wp option delete 'mmdc_remove_help'
wp option delete 'mmdc_remove_screen_options'
wp option delete 'mmdc_widgets_welcome'
wp option delete 'mmdc_widgets_glance'
wp option delete 'mmdc_widgets_activity'
wp option delete 'mmdc_widgets_draft'
wp option delete 'mmdc_widgets_quick_draft'
wp option delete 'mmdc_widgets_wp_news'
wp option delete 'mmdc_widgets_plugins'
wp option delete 'mmdc_remove_wp_topbar'
wp option delete 'mmdc_remove_wp_edit_topbar'
wp option delete 'mmdc_remove_new_topbar'
wp option delete 'mmdc_change_howdy_topbar'
wp option delete 'mmdc_wp_thankyou_footer_disable'
wp option delete 'mmdc_wp_thankyou_footer'
wp option delete 'mmdc_wp_version_disable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
