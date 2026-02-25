#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-account-id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-popupsmart-version'"
wp option delete 'popupsmart_account_id'

