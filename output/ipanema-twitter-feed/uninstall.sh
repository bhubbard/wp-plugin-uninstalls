#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'itf_gt_database_options_%'"
wp option delete 'itf_gt_database_options_'

