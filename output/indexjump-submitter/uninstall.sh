#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'indexjump_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_indexjump_notice' OR option_name LIKE '_site_transient_%_indexjump_notice'"

