#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acs-advanced-custom-search-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"

