#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fssl-setting-zoom'
wp option delete 'fssl-setting-lat'
wp option delete 'fssl-setting-long'
wp option delete 'fssl-setting-icon'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_short_des'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_short_des'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_short_des'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_short_des'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fssl_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fssl_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fssl_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fssl_link'"
