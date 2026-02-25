#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grp_configuration_settings'
wp option delete 'grp_global_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"

