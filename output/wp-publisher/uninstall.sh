#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_publisher_host'
wp option delete 'wp_publisher_user'
wp option delete 'wp_publisher_pass'
wp option delete 'wp_publisher_port'
wp option delete 'wp_publisher_active_mode'
wp option delete 'wp_publisher_remote_wp_content_dir'
wp option delete 'wp_publisher_token'
wp option delete 'ftp_sync_port'
wp option delete 'wp_publisher_outlandish_sync_secret'

