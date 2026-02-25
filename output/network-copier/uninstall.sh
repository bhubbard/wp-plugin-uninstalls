#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmc_activity_log'
wp option delete 'new_option_name'
wp option delete 'some_other_option'
wp option delete 'option_etc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"

