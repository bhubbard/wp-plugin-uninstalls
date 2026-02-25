#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daextulma_live_preview_markdown_parser'
wp option delete 'daextulma_live_preview_php_auto_refresh'
wp option delete 'daextulma_live_preview_php_debounce_delay'
wp option delete 'daextulma_editor_markdown_parser'
wp option delete 'daextulma_options_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_database_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_documents_menu_required_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_required_capability'"
wp option delete 'daextulma_dismissible_notice_a'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_editor_markdown_parser'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_live_preview_markdown_parser'"

