#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aelurl_login_input'
wp option delete 'aelurl_login'
wp option delete 'aelurl_register_input'
wp option delete 'aelurl_register'
wp option delete 'aelurl_forgot_input'
wp option delete 'aelurl_forgot'
wp option delete 'aelurl_htaccess_original'

