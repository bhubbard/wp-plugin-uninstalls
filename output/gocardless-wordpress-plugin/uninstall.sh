#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gocardless_%'"
wp option delete 'gocardless_config'
wp option delete 'gocardless_limit'

