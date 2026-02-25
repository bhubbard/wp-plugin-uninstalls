#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'euphrenic_player_lite_for_youtube_options'
wp option delete 'euphrenic_player_lite_for_youtube_galleries'
wp option delete 'euphrenic_player_lite_for_youtube_version'

# Delete Transients
wp transient delete 'euphrenic_activation_redirect'

