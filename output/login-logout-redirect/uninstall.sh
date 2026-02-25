#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_logout_redirect_login_enable'
wp option delete 'login_logout_redirect_login'
wp option delete 'login_logout_redirect_login_page'
wp option delete 'login_logout_redirect_login_custom'
wp option delete 'login_logout_redirect_logout_enable'
wp option delete 'login_logout_redirect_logout'
wp option delete 'login_logout_redirect_logout_page'
wp option delete 'login_logout_redirect_logout_custom'

