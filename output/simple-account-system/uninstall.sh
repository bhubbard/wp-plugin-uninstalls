#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_account_system_recaptcha'
wp option delete 'simple_account_system_recaptcha_site_key'
wp option delete 'simple_account_system_recaptcha_secret_key'
wp option delete 'simple_account_system_logout_links'

