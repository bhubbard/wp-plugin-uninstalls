#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_scribd_api_key'
wp option delete 'wp_scribd_secret'
wp option delete 'wp_scribd_position'

