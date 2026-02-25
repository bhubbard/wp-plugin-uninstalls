#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushconnect_status'
wp option delete 'pushconnect_api_key'
wp option delete 'pushconnect_notify_posts'
wp option delete 'pushconnect_javascript_location'

