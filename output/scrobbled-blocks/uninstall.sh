#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrobbled_blocks_username'
wp option delete 'scrobbled_blocks_api_key'
wp option delete 'scrobbled_blocks_placeholder_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stale' OR option_name LIKE '_site_transient_%_stale'"

