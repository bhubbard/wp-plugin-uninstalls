#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amli_version_number'
wp option delete 'amli_last_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'amli_%'"

