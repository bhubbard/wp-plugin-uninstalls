-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextulma_live_preview_markdown_parser', 'daextulma_live_preview_php_auto_refresh', 'daextulma_live_preview_php_debounce_delay', 'daextulma_editor_markdown_parser', 'daextulma_options_version', 'daextulma_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_database_version';
DELETE FROM wp_options WHERE option_name LIKE '%_documents_menu_required_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_tools_menu_required_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_editor_markdown_parser';
DELETE FROM wp_options WHERE option_name LIKE '%_live_preview_markdown_parser';

