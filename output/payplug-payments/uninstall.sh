#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payplug_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'payplug_%'"
wp option delete 'payplug_parameters'
wp option delete 'payplug_tracking_notice'

