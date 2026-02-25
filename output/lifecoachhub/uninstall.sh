#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifecoachhub_api_key'
wp option delete 'lifecoachhub_connection_status'
wp option delete 'lifecoachhub_connected_at'

