#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'okvoauth_login_method'
wp option delete 'okvoauth_login_cookie_expiration'
wp option delete 'okvoauth_google_client_id'
wp option delete 'okvoauth_google_client_secret'
wp option delete 'widget_rdoauth_loginlinks_widget'
wp option delete 'registration'

# Delete Transients
wp transient delete 'rundiz-oauth-error'

