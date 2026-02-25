#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smbw_settings'
wp option delete 'widget_social-media-badge-widget'
wp option delete 'smbw_openSelection'
wp option delete 'smbw_collapsible'
wp option delete 'smbw_allClosed'
wp option delete 'smbw_load_jquery_ui'
wp option delete 'smbw_load_scripts'
wp option delete 'smbw_style'
wp option delete 'smbw_faces_facebook'
wp option delete 'smbw_stream_facebook'
wp option delete 'smbw_tweets'
wp option delete 'smbw_live_twitter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smbw_plugin_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smbw_plugin_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smbw_plugin_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smbw_plugin_ignore_notice'"
