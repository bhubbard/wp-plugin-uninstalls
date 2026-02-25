#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wally_api_key'
wp option delete 'wally_widget_enabled'
wp option delete 'wally_autosync_enabled'
wp option delete 'wally_sync_consent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wally_batch_size'

