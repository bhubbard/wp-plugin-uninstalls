#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_msnsync_url'
wp option delete 'wp_msnsync_password'
wp option delete 'wp_msnsync_enable'
wp option delete 'wp_msnsync_cook'
wp option delete 'wp_msnsync_publish'
wp option delete 'wp_msnsync_delete'
wp option delete 'wp_msnsync_full'
wp option delete 'wp_msnsync_msg'
wp option delete 'wp_msnsync_title'
wp option delete 'wp_msnsync_more'
wp option delete 'wp_msnsync_id'
wp option delete 'wp_msnsync_exclude'

