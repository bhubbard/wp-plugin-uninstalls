#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"

# Delete Transients
wp transient delete 'facioj_autoloader_not_optimized'

