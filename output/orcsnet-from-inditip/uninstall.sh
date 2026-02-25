#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'orcsnet_placement'
wp option delete 'orcsnet_userid'
wp option delete 'orcsnet_publisher_lock'
wp option delete 'orcsnet_variant'

