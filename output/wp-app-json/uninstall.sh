#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_app_json_secrets'
wp option delete 'wp_app_json_postcount'
wp option delete 'wp_app_json_thumburl'
wp option delete 'wp_app_json_header'
wp option delete 'wp_app_json_banner'
wp option delete 'wp_app_json_footer'

