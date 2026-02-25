#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cp_lock_wc_password'
wp option delete 'cp_lock_wc_allow_users'
wp option delete 'cp_lock_wc_message'

