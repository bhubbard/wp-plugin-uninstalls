-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_block_swap_version', 'responsive_block_swap_installed_time');

