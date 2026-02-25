#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_timezone'"
wp option delete 'fakturama_setting'
wp option delete 'neosconnectorforfakturama-hide-review-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"

