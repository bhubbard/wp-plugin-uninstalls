#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_health_manager_disabled_tests'
wp option delete 'site_health_manager_disabled_info'

