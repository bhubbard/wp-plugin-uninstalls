#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_recaptcha_site_key'
wp option delete 'google_recaptcha_secret_key'
wp option delete 'google_recaptcha_login_check_disable'

