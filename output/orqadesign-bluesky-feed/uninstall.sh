#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bluesky_handle'
wp option delete 'bluesky_email'
wp option delete 'bluesky_app_password'
wp option delete 'bluesky_display_name'
wp option delete 'bluesky_avatar_url'

