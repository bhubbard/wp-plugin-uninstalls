#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_custom_login_logo_fadein'
wp option delete 'wp_custom_login_logo_fadetime'
wp option delete 'wp_custom_login_logo_url'
wp option delete 'wp_custom_login_logo_height'
wp option delete 'wp_custom_login_logo_width'
wp option delete 'wp_custom_login_url'
wp option delete 'wp_custom_login_title'
wp option delete 'wp_custom_login_logo_message'

