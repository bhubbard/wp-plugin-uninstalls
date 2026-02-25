#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lagersystemparcelpickup_apikey'
wp option delete 'lagersystemparcelpickup_gmapsapikey'
wp option delete 'lagersystemparcelpickup_removeprefix'
wp option delete 'lagersystemparcelpickup_daousername'
wp option delete 'lagersystemparcelpickup_daopassword'
wp option delete 'lagersystemparcelpickup_dhlkey'
wp option delete 'lagersystemparcelpickup_upslicencekey'
wp option delete 'lagersystemparcelpickup_upsuserid'
wp option delete 'lagersystemparcelpickup_upspassword'
wp option delete 'lagersystemparcelpickup_bringuid'
wp option delete 'lagersystemparcelpickup_bringapikey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Pakkeshop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Pakkeshop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Pakkeshop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Pakkeshop'"
