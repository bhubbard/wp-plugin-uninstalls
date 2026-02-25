#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'peentify_status'
wp option delete 'peentify_api_key'
wp option delete 'peentify_api_secret'
wp option delete 'peentify_main_url'

