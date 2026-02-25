#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'peg_oauth_settings'
wp option delete 'peg_max_albums_displayed'
wp option delete 'peg_saved_user_name'
wp option delete 'peg_last_album'
wp option delete 'peg_saved_state'
wp option delete 'peg_migrate_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe2%'"
wp option delete 'peg_general_settings'
wp option delete 'peg_multisite'
wp option delete 'active_sitewide_plugins'
wp option delete 'peg_roles'
wp option delete 'peg_cache_keys'

# Delete Transients
wp transient delete 'settings_errors'

