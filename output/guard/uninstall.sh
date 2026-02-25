#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guard_status'
wp option delete 'guard_lpl'
wp option delete 'guard_notices'
wp option delete 'guard_max_attempts'
wp option delete 'guard_lock_duration'
wp option delete 'guard_notify_email'
wp option delete 'guard_pin'
wp option delete 'guard_url'
wp option delete 'guard_custom_text'
wp option delete 'guard_custom_username_text'
wp option delete 'guard_custom_password_text'
wp option delete 'guard_custom_authkey_text'

