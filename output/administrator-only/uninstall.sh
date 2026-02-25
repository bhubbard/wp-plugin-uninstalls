#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admon_delete_data'
wp option delete 'admon_front_end'
wp option delete 'admon_front_end_link'
wp option delete 'admon_rest_api'
wp option delete 'admon_rest_api_link'
wp option delete 'admon_excluded_pages'
wp option delete 'admon_excluded_routes'

