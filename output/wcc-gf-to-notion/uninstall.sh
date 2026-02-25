#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcc_gf_notion_ignore_spam_entry'
wp option delete 'gf_db_version'
wp option delete 'wcc_gf_notion_notification_send_to'
wp option delete 'wcc_gf_notion_notification_subject'
wp option delete 'wcc_gf_notion_debug'
wp option delete 'wcc_gf_notion_notification_send_to	'
wp option delete 'wcc_gf_notion_uninstall'
wp option delete 'wcc_gf_notion_licence'
wp option delete 'wcc_gf_notion_db_version'

