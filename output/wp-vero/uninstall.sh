#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvero_api_key'
wp option delete 'wpvero_ignore_user'
wp option delete 'wpvero_track_posts'
wp option delete 'wpvero_track_pages'
wp option delete 'wpvero_track_searches'

