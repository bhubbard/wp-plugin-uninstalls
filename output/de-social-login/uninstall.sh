#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'de_social_login_force_register'
wp option delete 'de_social_login_force_register_message'
wp option delete 'de_social_login_facebook_enable'
wp option delete 'de_social_login_facebook_id'
wp option delete 'de_social_login_facebook_secret'
wp option delete 'de_social_login_twitter_enable'
wp option delete 'de_social_login_twitter_id'
wp option delete 'de_social_login_twitter_secret'
wp option delete 'de_social_login_google_enable'
wp option delete 'de_social_login_google_client'
wp option delete 'de_social_login_google_secret'
wp option delete 'de_social_login_openid_enable'
wp option delete 'de_social_login_linkedin_enable'
wp option delete 'de_social_login_linkedin_id'
wp option delete 'de_social_login_linkedin_secret'
wp option delete 'de_social_login_yahoo_enable'
wp option delete 'de_social_login_yahoo_id'
wp option delete 'de_social_login_yahoo_domain'
wp option delete 'de_social_login_yahoo_key'
wp option delete 'de_social_login_yahoo_secret'
wp option delete 'de_social_login_orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deutype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deutype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deutype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deutype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deuimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deuimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deuimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deuimage'"
