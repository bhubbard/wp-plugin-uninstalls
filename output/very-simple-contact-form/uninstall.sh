#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vscf-setting-1'
wp option delete 'vscf-setting-22'
wp option delete 'vscf-setting-28'
wp option delete 'vscf-setting-3'
wp option delete 'vscf-setting-35'
wp option delete 'vscf-setting-15'
wp option delete 'vscf-setting-2'
wp option delete 'vscf-setting-27'
wp option delete 'vscf-setting-32'
wp option delete 'vscf-setting-33'
wp option delete 'vscf-setting-19'
wp option delete 'vscf-setting-21'
wp option delete 'vscf-setting-34'
wp option delete 'vscf-setting-29'
wp option delete 'vscf-setting-30'
wp option delete 'vscf-setting-25'
wp option delete 'vscf-setting-38'
wp option delete 'vscf-setting-36'
wp option delete 'vscf-setting-39'
wp option delete 'vscf-setting-40'
wp option delete 'vscf-setting-23'
wp option delete 'vscf-setting-24'
wp option delete 'vscf-setting-4'
wp option delete 'vscf-setting-5'
wp option delete 'vscf-setting-6'
wp option delete 'vscf-setting-7'
wp option delete 'vscf-setting-9'
wp option delete 'vscf-setting-18'
wp option delete 'vscf-setting-10'
wp option delete 'vscf-setting-11'
wp option delete 'vscf-setting-13'
wp option delete 'vscf-setting-20'
wp option delete 'vscf-setting-26'
wp option delete 'vscf-setting-12'
wp option delete 'vscf-setting-8'
wp option delete 'vscf-setting-37'
wp option delete 'vscf-setting-31'
wp option delete 'vscf-setting-14'
wp option delete 'vscf-setting-16'
wp option delete 'vscf-setting-17'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_sub'"
