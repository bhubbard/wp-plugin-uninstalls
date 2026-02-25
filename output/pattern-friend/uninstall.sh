#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pattern_friend_mobile_max_threshold'
wp option delete 'pattern_friend_tablet_max_threshold'
wp option delete 'pattern_friend_header_sticky'
wp option delete 'pattern_friend_dynamic_css_version'

# Delete Transients
wp transient delete 'pattern_friend_plugin_activated'

