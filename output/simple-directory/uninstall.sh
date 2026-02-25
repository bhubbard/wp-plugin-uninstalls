#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_directory_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sdir_taxonomy_image%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'SDIR_VERSION_NUM'

