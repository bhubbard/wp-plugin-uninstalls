#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_civic_key'
wp option delete 'congress_google_map_api_key'
wp option delete 'congress_cache'
wp option delete 'congress_cache_time'
wp option delete 'congress_options'
wp option delete 'congress_redirect_url'
wp option delete 'congress_shortcodes'
wp option delete 'congress_themes'
wp option delete 'congress_photos_last_modified'

