#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'immersive_shopping_videos_api_key'
wp option delete 'immersive_shopping_videos_version'
wp option delete 'immersive_shopping_videos_operations'
wp option delete 'immersive_shopping_videos_app_id'
wp option delete 'immersive_shopping_videos_settings'
wp option delete 'immersive_shopping_videos_db_version'

# Delete Transients
wp transient delete 'immersive_shopping_videos_temp_data'
wp transient delete 'immersive_shopping_videos_cache'

