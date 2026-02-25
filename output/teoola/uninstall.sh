#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'teoola_username'
wp option delete 'teoola_key'
wp option delete 'teoola_entity'
wp option delete 'teoola_minified'
wp option delete 'teoola_show_info'
wp option delete 'teoola_header_color'
wp option delete 'teoola_bg_icon'
wp option delete 'teoola_icon'
wp option delete 'teoola_show_popup'
wp option delete 'teoola_show_events'
wp option delete 'teoola_show_news'
wp option delete 'teoola_width_popup'
wp option delete 'teoola_chat_question'
wp option delete 'teoola_show_chat'
wp option delete 'teoola_header_color_popup'
wp option delete 'teoola_given_name'
wp option delete 'teoola_avatar'

