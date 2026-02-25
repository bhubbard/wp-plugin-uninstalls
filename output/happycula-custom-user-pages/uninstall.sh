#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-after-login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-after-logout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-register'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-lostpassword'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-resetpassword'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-editprofile'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pages-account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-recaptcha-site-key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-recaptcha-secret-key'"
wp option delete 'happycula-custom-user-pages-pages-login'
wp option delete 'happycula-custom-user-pages-pages-after-login'
wp option delete 'happycula-custom-user-pages-pages-after-logout'
wp option delete 'happycula-custom-user-pages-pages-register'
wp option delete 'happycula-custom-user-pages-pages-lostpassword'
wp option delete 'happycula-custom-user-pages-pages-resetpassword'
wp option delete 'happycula-custom-user-pages-pages-editprofile'
wp option delete 'happycula-custom-user-pages-pages-account'
wp option delete 'happycula-custom-user-pages-recaptcha-site-key'
wp option delete 'happycula-custom-user-pages-recaptcha-secret-key'

