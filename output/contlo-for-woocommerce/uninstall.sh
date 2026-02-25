#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contlo_connect_token'
wp option delete 'contlo_api_key'
wp option delete 'store_public_key'
wp option delete 'logs_enabled'
wp option delete 'event_tracking_enabled'

