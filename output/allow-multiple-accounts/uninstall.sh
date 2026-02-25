#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c2c_allow_multiple_accounts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bkup_%'"

