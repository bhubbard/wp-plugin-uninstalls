#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cross_service_solutions_show_provider'
wp option delete 'cross_service_solutions_all_activate_plugins'
wp option delete 'cross_service_solutions_api_key'

