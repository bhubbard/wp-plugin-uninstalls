#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raven_analytics_uastring'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'analytics_%'"

