-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('anti_block_settings', 'anti_block_deferred_admin_notices');

