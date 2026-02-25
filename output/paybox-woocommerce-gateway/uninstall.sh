#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WC_PAYBOX_PLUGIN.'_version''
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

