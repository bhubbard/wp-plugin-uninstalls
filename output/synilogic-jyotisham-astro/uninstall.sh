#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jyotisham_api_key'
wp option delete 'jyotisham_google_maps_key'
wp option delete 'jyotisham_api_status'
wp option delete 'jyotisham_usage_stats'
wp option delete 'jyotisham_api_calls_made'
wp option delete 'jyotisham_api_last_call'
wp option delete 'jyotisham_plugin_version'

