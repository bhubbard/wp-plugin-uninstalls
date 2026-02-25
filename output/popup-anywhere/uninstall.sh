#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwext_show_when'
wp option delete 'jwext_livetime_cookie'
wp option delete 'jwext_popup_type'
wp option delete 'jwext_popup_onpages'
wp option delete 'jwext_popupanywhere_dbsession'
wp option delete 'jwext_popup_assignshow'
wp option delete 'jwext_custom_postype'
wp option delete 'jwext_custom_menu'
wp option delete 'jwext_image_id'
wp option delete 'jwext_content_popup'
wp option delete 'external_link'
wp option delete 'jwext_width'
wp option delete 'jwext_height'
wp option delete 'jwext_close_s'
wp option delete 'jwext_redirect_link'

