#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saudadpr_enabled'
wp option delete 'saudadpr_api_key'
wp option delete 'saudadpr_api_url'
wp option delete 'saudadpr_language'
wp option delete 'saudadpr_show_courier_preview'
wp option delete 'saudadpr_migrated'

