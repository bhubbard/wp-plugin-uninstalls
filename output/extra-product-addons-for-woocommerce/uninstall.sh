#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epafw_settings'
wp option delete 'epafw_run_bc_script_for_v1.1.0'
wp option delete 'active_sitewide_plugins'

