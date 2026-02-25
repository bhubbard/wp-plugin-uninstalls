#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supsystic_tbl_welcome_page_was_showed'
wp option delete 'supsystic_tbl_settings'
wp option delete 'dtgs_ac_remind'
wp option delete 'dtgs_ac_subscribe'
wp option delete 'dtgs_ac_disabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_page_was_showed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_welcome_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp option delete 'supsystic_tables_love_link_title'
wp option delete 'supsystic_tables_show_love_link'
wp option delete 'supsystic_tables_last_check_love_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supsystic-tables-tutorial_was_showed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supsystic-tables-tutorial_was_showed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supsystic-tables-tutorial_was_showed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supsystic-tables-tutorial_was_showed'"
