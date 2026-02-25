#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_licensing_%'"
wp option delete 'wp-reset'
wp option delete 'current_theme'
wp option delete 'wplang'
wp option delete 'wp-reset-snapshots'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wf_install_error_%' OR option_name LIKE '_site_transient_wf_install_error_%'"
wp transient delete 'wpr_active_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag'"
