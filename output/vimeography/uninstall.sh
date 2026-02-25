#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vimeography_corrupt_keys_found'
wp option delete 'vimeography_activation_keys'
wp option delete 'vimeography_pro_db_version'
wp option delete 'vimeography_default_settings'
wp option delete 'vimeography_pro_access_token'
wp option delete 'vimeography_access_token'
wp option delete 'vimeography_db_version'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_response' OR option_name LIKE '_site_transient_%_response'"
wp transient delete '_vimeography_welcome_screen_activation_redirect'

