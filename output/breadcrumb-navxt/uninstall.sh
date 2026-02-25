#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcn_options'
wp option delete 'site_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_bk'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

