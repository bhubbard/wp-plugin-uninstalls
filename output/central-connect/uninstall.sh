#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boldgrid_api_key'
wp option delete 'bg_connect_configs'
wp option delete 'bglib_configs'
wp option delete 'boldgrid_connect_provider'
wp option delete 'boldgrid_connect_hide_menu'
wp option delete 'boldgrid_connect_analytics'

