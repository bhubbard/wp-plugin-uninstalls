#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'secuadem_admin_notice_message'
wp option delete 'adminhash'
wp option delete 'new_admin_email'

