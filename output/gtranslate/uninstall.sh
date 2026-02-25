#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GTranslate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice'"

