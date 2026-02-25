#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_publish'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'DDSOO_%'"

