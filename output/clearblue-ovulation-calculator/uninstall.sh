#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cboc-language'
wp option delete 'cboc-format'
wp option delete 'cboc-show-credits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cboc-color-%'"
wp option delete 'cbddc-version'
wp option delete 'cbddc-show-credits'

