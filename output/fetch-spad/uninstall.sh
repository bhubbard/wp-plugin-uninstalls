#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fetch_spad_%'"
wp option delete 'fetch_spad_layout'
wp option delete 'fetch_spad_language'
wp option delete 'fetch_spad_timezone'

