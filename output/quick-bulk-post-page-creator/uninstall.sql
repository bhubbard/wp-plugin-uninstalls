-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qbppc_entries', 'qbppc_hierarchy_indent_character', 'qbppc_post_type', 'qbppc_post_status');

