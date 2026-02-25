#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yt_for_wp_channel_id'
wp option delete 'yt_for_wp_api_key'
wp option delete 'yt_for_wp_encrypted_api_key'

