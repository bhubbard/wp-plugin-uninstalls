#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtpfui_disable_metabox_link'
wp option delete 'rtpfui_disable_metabox_quote'
wp option delete 'rtpfui_disable_metabox_video'
wp option delete 'rtpfui_disable_metabox_audio'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
