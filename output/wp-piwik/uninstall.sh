#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-piwik_global-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp-piwik-%'"
wp option delete 'wp-piwik-manually'
wp option delete 'wp-piwik-notices'
wp option delete 'wp-piwik_global-settings'
wp option delete 'wp-piwik_settings'
wp option delete 'wpmu-piwik_global-settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp-piwik_c_%' OR option_name LIKE '_site_transient_wp-piwik_c_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp-piwik_custom_cat%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp-piwik_custom_cat%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp-piwik_custom_val%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp-piwik_custom_val%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp-piwik_custom_val%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp-piwik_custom_val%'"
