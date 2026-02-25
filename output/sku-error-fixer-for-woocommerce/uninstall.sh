#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sef_auto_clean'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'sku_error_fixer_version'

