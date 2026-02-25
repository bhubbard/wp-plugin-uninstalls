#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wkwptoc_oto_username'
wp option delete '_wkwptoc_oto_password'
wp option delete '_wkwptoc_store_name'
wp option delete '_wkwptoc_oto_access_token'
wp option delete '_wkwptoc_oto_webook_url'
wp option delete '_wkwptoc_oto_environment'
wp option delete '_wkwptoc_wc_api_id'

