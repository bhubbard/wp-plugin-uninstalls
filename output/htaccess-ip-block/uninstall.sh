#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HTACCESS_IP_BLOCK_FILE_MAP_NAME'
wp option delete 'my_option_name'

