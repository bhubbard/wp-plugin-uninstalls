#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsidea_settings'
wp option delete 'smsidea_master_key'
wp option delete 'smsidea_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smsidea_%'"
wp option delete 'smsidea_api_key'
wp option delete 'smsidea_test_master_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
