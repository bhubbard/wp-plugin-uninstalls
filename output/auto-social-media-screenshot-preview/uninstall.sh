#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wh_api_token'
wp option delete 'wh_api_secret'
wp option delete 'wh_screenshot_ttl'
wp option delete 'wh_screenshot_delay'

