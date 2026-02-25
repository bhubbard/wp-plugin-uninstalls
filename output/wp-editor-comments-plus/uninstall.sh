#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_all'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reply'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_edit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_submit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cancel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toolbar1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toolbar2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toolbar3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_toolbar4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_comments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_respond'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_comment_form'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_comment_textarea'"

