#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpl_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lpl_%'"
wp option delete 'lpl_cookie_value'

