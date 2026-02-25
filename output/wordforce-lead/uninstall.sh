#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdfl-setting-78'
wp option delete 'wdfl-setting-57'
wp option delete 'wdfl-setting-63'
wp option delete 'wdfl-setting-59'
wp option delete 'wdfl-setting-61'
wp option delete 'wdfl-setting-62'
wp option delete 'wdfl-setting-a'
wp option delete 'wdfl-setting-b'
wp option delete 'wdfl-setting-c'
wp option delete 'wdfl-setting-d'
wp option delete 'wdfl-setting-e'
wp option delete 'wdfl-setting-f'
wp option delete 'wdfl-setting-56'
wp option delete 'wdfl-setting-58'
wp option delete 'wdfl-setting-6'
wp option delete 'wdfl-setting-60'
wp option delete 'wdfl-setting-9'
wp option delete 'wdfl-setting-10'
wp option delete 'wdfl-setting-72'
wp option delete 'wdfl-setting-74'
wp option delete 'wdfl-setting-73'
wp option delete 'wdfl-setting-68'
wp option delete 'wdfl-setting-69'
wp option delete 'wdfl-setting-70'
wp option delete 'wdfl-setting-71'
wp option delete 'wdfl-setting-82'
wp option delete 'wdfl-setting-81'
wp option delete 'wdfl-setting-77'
wp option delete 'wdfl-setting-101'
wp option delete 'wdfl-setting-75'
wp option delete 'wdfl-setting-76'
wp option delete 'wdfl-setting-120'
wp option delete 'wdfl-setting-15'
wp option delete 'wdfl-setting-16'
wp option delete 'wdfl-setting-121'
wp option delete 'wdfl-setting-22'
wp option delete 'wdfl-setting-102'
wp option delete 'wdfl-setting-2'
wp option delete 'wdfl-setting-11'
wp option delete 'wdfl-setting-13'
wp option delete 'wdfl-setting-20'
wp option delete 'wdfl-setting-14'
wp option delete 'wdfl-setting-26'
wp option delete 'wdfl-setting-12'
wp option delete 'sales-setting-22'
wp option delete 'wdfl-setting-55'
wp option delete 'wdfl-setting-65'
wp option delete 'wdfl-setting-23'
wp option delete 'wdfl-setting-24'
wp option delete 'wdfl-setting-3'
wp option delete 'wdfl-setting-4'
wp option delete 'wdfl-setting-19'
wp option delete 'wdfl-setting-21'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_sub'"
