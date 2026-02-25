#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urbanpush_password'
wp option delete 'urbanpush_appname'
wp option delete 'urbanpush_appkey'
wp option delete 'urbanpush_appmaster'
wp option delete 'urbanpush_appname2'
wp option delete 'urbanpush_appkey2'
wp option delete 'urbanpush_appmaster2'
wp option delete 'urbanpush_appname3'
wp option delete 'urbanpush_appkey3'
wp option delete 'urbanpush_appmaster3'
wp option delete 'urbanpush_appname4'
wp option delete 'urbanpush_appkey4'
wp option delete 'urbanpush_appmaster4'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'push sent for %'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'push sent for %'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'push sent for %'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'push sent for %'"
