#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'serasend_user_login'
wp option delete 'serasend_user_password'
wp option delete 'serasend_last_login_check_status'
wp option delete 'serasend_last_login_check'

