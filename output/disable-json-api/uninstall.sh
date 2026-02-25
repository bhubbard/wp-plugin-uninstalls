#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_rest_api_options'
wp option delete 'DRA_route_whitelist'

