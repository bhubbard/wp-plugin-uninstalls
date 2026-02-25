#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'testimonial_settings'
wp option delete 'testimonial_video_playback'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'awl_testimonial%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'awl_testimonial%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'awl_testimonial%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'awl_testimonial%'"
