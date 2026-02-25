#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'check_external_login_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'check_external_login_%'"

