#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7_mch_%'"
wp option delete 'cf7_count'
wp option delete 'cf7_mch_end'

