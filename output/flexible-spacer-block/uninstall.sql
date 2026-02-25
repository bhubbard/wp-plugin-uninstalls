-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flexible_spacer_block_breakpoint', 'flexible_spacer_block_default_value', 'flexible_spacer_block_show_block');

