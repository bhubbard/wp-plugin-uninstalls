#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conversations_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'convx_temp_password_responder_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'conversations_timediff_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'conversations_last_login_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'conversations_convxns_sort_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'conversations_convxns_unread_on_top_%'"
wp option delete 'conversations_template_folder'
wp option delete 'conversations_email_from'
wp option delete 'conversations_end_users_login_page_slug'
wp option delete 'conversations_responders_login_page_slug'

