#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_languages'"
wp option delete 'ssm_languages'
wp option delete 'ssm_version'

