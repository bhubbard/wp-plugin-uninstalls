#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-webhotelier_options'
wp option delete 'csf_demo_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

