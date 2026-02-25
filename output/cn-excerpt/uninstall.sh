#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_shortcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_finish_sentence'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ellipsis'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_read_more_tpl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allowed_tags'"

