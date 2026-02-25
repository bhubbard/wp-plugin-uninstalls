#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stl_timeline_band_colors'
wp option delete 'stl_timeline_band_options'
wp option delete 'stl_timeline_orientation'
wp option delete 'stl_timeline_startdate'
wp option delete 'stl_timeline_usestartstop'
wp option delete 'stl_timeline_start'
wp option delete 'stl_timeline_stop'
wp option delete 'stl_timeline_plugin_version'
wp option delete 'stl_timeline_useattachments'
wp option delete 'stl_timeline_linkhandling'
wp option delete 'stl_timeline_showbubbledate'
wp option delete 'stl_timeline_showfutureposts'
wp option delete 'stl_timelinepageids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-tapeImage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-tapeImage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-tapeImage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-tapeImage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stl-classname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stl-classname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stl-classname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stl-classname'"
