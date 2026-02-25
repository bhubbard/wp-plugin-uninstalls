#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fb_api_id'
wp option delete 'fb_app_secret'
wp option delete 'fb_login_page'

