-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('be_allowed_blocks', 'be_breakpoints', 'block_enhancements_activation_redirect', 'cbb_breakpoints', 'be_docs');

