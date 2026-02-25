#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghl_clnt_id'
wp option delete 'ghl_clnt_scrt'
wp option delete 'ghl_location_connected'

