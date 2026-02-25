#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caes_target'
wp option delete 'caes_link'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp option delete 'caes_symlink_list'
wp option delete 'caes_symlink_list_lastdelete'

