#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsociline_fonts'
wp option delete 'wpsociline_popupbox_height'
wp option delete 'wpsociline_popupbox_border'
wp option delete 'wpsociline_popupbox_bordercolor'
wp option delete 'wpsociline_popupbox_borderradius'
wp option delete 'wpsociline_popupbox_icon'
wp option delete 'wpsociline_notification_icon_bgcolor'
wp option delete 'wpsociline_popupbox_rightoffset'
wp option delete 'wpsociline_boxshadow_offset'
wp option delete 'wpsociline_blurradius'
wp option delete 'wpsociline_spreadraius'
wp option delete 'wpsociline_boxshadow_color'
wp option delete 'wpsociline_popup_state'
wp option delete 'wpsociline_userid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licensed'"

