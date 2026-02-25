#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scd_ec'
wp option delete 'td-webmaster-last-caps-update'
wp option delete 'td-webmaster-user-role-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

