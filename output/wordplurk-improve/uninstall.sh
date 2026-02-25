#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordplurk_template'
wp option delete 'wordplurk_suapi_user'
wp option delete 'wordplurk_suapi_key'
wp option delete 'wordplurk_login'
wp option delete 'wordplurk_shorturl_en'
wp option delete 'wordplurk_qualifier'
wp option delete 'wordplurk_language_set'
wp option delete 'wordplurk_Plurk2tw_en'
wp option delete 'wordplurk_version'
wp option delete 'wordplurk_username'
wp option delete 'wordplurk_password'
wp option delete 'wordplurk_apikey'
wp option delete 'wordplurk_cookie_exp_time'
wp option delete 'wordplurk_cookie'
wp option delete 'wordplurk_cmrt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_been_plurked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_been_plurked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_been_plurked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_been_plurked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wordplurk_plurkornot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wordplurk_plurkornot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wordplurk_plurkornot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wordplurk_plurkornot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plurk_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plurk_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plurk_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plurk_id'"
