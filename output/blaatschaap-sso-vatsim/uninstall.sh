#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_page'
wp option delete 'register_page'
wp option delete 'link_page'
wp option delete 'logout_frontpage'
wp option delete 'bsauth_custom_button'
wp option delete 'bs_auth_hide_local'
wp option delete 'bs_auth_signup_user_url'
wp option delete 'bs_auth_signup_user_email'
wp option delete 'bs_auth_signup_display_name'
wp option delete 'bs_auth_signup_nickname'
wp option delete 'bs_auth_signup_first_name'
wp option delete 'bs_auth_signup_last_name'
wp option delete 'bs_auth_signup_description'
wp option delete 'bs_auth_signup_jabber'
wp option delete 'bs_auth_signup_aim'
wp option delete 'bs_auth_signup_yim'
wp option delete 'bs_vatsimsso_dbversion'

