#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paranoid911_check_database'
wp option delete 'paranoid911_check_filesystem'
wp option delete 'paranoid911_file_method'
wp option delete 'paranoid911_check_interval'

