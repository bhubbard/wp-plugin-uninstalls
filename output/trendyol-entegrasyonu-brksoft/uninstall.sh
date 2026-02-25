#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brkti_supplier_id'
wp option delete 'brkti_api_key'
wp option delete 'brkti_api_secret'
wp option delete 'brkti_auto_sync'
wp option delete 'brkti_last_sync'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'brkti_sync_count_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brkti_sync_lock_%' OR option_name LIKE '_site_transient_brkti_sync_lock_%'"

