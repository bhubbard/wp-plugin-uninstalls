#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbddc-language'
wp option delete 'cbddc-format'
wp option delete 'cbddc-show-credits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cbddc-color-%'"
wp option delete 'cbddc-version'

