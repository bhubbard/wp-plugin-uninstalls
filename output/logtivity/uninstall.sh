#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logtivity_last_settings_check_in_at'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'logtivity_enable_options_table_logging'
wp option delete 'logtivity_enable_post_meta_logging'
wp option delete 'logtivity_version'
wp option delete 'logtivity_app_verify_url'
wp option delete 'logtivity_activate'

# Delete Transients
wp transient delete 'dismissed-logtivity-site-url-has-changed-notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed-%' OR option_name LIKE '_site_transient_dismissed-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_logtivity_%' OR option_name LIKE '_site_transient_logtivity_%'"
wp transient delete 'update_plugins'
wp transient delete 'logtivity-welcome-notice'

