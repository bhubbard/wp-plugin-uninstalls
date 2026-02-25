#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'davsy_api_key'
wp option delete 'wp_davsy_widget_enabled'
wp option delete 'davsy_header_title'
wp option delete 'davsy_no_post'
wp option delete 'wp_davsy'

