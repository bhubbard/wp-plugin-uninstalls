#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message'"
wp option delete 'svg_playlistline'
wp option delete 'svg_playlistpage'
wp option delete 'svg_embed'
wp option delete 'svg_playlistthumbnailsize'
wp option delete 'svg_playlisttitle'
wp option delete 'svg_playlistplayback'
wp option delete 'svg_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpf_role_%'"

