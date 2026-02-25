#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themify_audio_dock_playlist'
wp option delete 'themify_audio_dock_collapsed'
wp option delete 'themify_audio_dock_bar_color'
wp option delete 'themify_audio_dock_track_color'
wp option delete 'themify_audio_dock_autoplay'

