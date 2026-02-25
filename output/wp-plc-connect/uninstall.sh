#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plcconnect_server_url'
wp option delete 'plcconnect_server_key'
wp option delete 'plcconnect_server_token'

