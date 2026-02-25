#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcmd_dashboard_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dcmd_%'"

