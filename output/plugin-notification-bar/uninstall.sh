#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification'
wp option delete 'notification_bg_color'
wp option delete 'notification_txt_color'
wp option delete 'notification_bar_fonts'
wp option delete 'notification_btn_txt'
wp option delete 'notification_btn_url'
wp option delete 'notification_btn_bg_color'
wp option delete 'notification_btn_txt_color'

