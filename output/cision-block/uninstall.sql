-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'cision_block_flush_rewrite_rules');

