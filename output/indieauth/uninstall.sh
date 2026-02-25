#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'indieauth_config'
wp option delete 'indieauth_root_user'
wp option delete 'indieauth_expires_in'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ids'"
wp option delete 'indieauth_show_login_form'
wp option delete 'iw_default_author'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_indieauth_discovery_%' OR option_name LIKE '_site_transient_indieauth_discovery_%'"
wp transient delete 'single_author'

# Clear Cron Jobs
wp cron event delete 'indieauth_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'indieauth_external_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'indieauth_external_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'indieauth_external_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'indieauth_external_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_modified'"
