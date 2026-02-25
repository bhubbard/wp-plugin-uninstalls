-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oneclblf_selected_blocks_layout', 'oneclblf_selected_callouts_layout');

