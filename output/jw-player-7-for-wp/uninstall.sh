#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwppp-library'
wp option delete 'jwppp-licence'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jwppp-type-%'"
wp option delete 'jwppp-position'
wp option delete 'jwppp-poster-image'
wp option delete 'jwppp-player-width'
wp option delete 'jwppp-player-height'
wp option delete 'jwppp-skin'
wp option delete 'jwppp-show-related'
wp option delete 'jwppp-active-share'
wp option delete 'jwppp-share-heading'
wp option delete 'jwppp-embed-video'
wp option delete 'jwppp-active-ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwppp-video-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwppp-video-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwppp-video-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwppp-video-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwppp-video-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwppp-video-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwppp-video-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwppp-video-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwppp-video-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwppp-video-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwppp-video-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwppp-video-description'"
