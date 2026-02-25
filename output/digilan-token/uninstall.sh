#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cityscope_backend'
wp option delete 'digilan_token_secret'
wp option delete 'digilan_token_mode'
wp option delete 'digilan_token_wifi4eu'
wp option delete 'digilan_token_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dlt_%' OR option_name LIKE '_site_transient_dlt_%'"
wp transient delete 'digilan_twitter_connect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_user_access_token'"
