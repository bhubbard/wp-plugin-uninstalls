-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ref-blocker-list', 'ref-spam-custom-blocks', 'ref-spam-block-mode', 'ref-spam-pro-key', 'ref-spam-pro-active', 'ref-spam-auto-update', 'ref-blocker-updated');

