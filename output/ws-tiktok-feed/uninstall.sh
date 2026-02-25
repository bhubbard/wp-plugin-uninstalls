#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tkf_preview_permalink'
wp option delete 'tkf_video_last_update'
wp option delete 'tkf_db_version'
wp option delete 'tkf_medias_migrated'

