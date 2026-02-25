#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forced_layout_expire_time'
wp option delete 'iphone_theme'
wp option delete 'show_switch_link_for_desktop'
wp option delete 'desktop_view_theme_link_text'
wp option delete 'mobile_view_theme_link_text'
wp option delete 'ipad_theme'
wp option delete 'android_theme'
wp option delete 'android_tab_theme'
wp option delete 'opera_theme'
wp option delete 'blackberry_theme'
wp option delete 'parm_os_theme'
wp option delete 'windows_theme'
wp option delete 'other_theme'
wp option delete 'amts_hide_pro_notice'

