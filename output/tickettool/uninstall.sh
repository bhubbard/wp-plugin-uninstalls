#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ticketool_blank'
wp option delete 'wp_ticketool_expired'
wp option delete 'wp_ticketool_key'
wp option delete 'wp_ticketool_thumbnail'
wp option delete 'wp_ticketool_thumbnail_width'
wp option delete 'wp_ticketool_iframe'
wp option delete 'wp_ticketool_iframe_width'
wp option delete 'wp_ticketool_iframe_height'
wp option delete 'wp_ticketool_map'
wp option delete 'wp_ticketool_map_width'
wp option delete 'wp_ticketool_map_height'
wp option delete 'wp_ticketool_cat'
wp option delete 'wp_ticketool_button_title'
wp option delete 'wp_ticketool_lang'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tickettool_event_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tickettool_event_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tickettool_event_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tickettool_event_id'"
