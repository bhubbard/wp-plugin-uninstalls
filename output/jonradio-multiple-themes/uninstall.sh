#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jr_mt_settings'
wp option delete 'jr_mt_internal_settings'
wp option delete 'jr_mt_all_themes'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_tab' OR option_name LIKE '_site_transient_%_tab'"

