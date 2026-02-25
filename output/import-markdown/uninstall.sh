#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import_menu_required_capability'"
wp option delete 'daimma_options_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_database_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log_import_data'"
wp option delete 'daimma_dismissible_notice_a'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_markdown_parser'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_html5'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_keep_list_start_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cebe_markdown_enable_new_lines'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_enable_em'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_enable_strong'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_use_asterisk'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_use_underscore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_unordered_list_markers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_html_input'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_allow_unsafe_links'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_commonmark_max_nesting_level'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import_post_type'"

