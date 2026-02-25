-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bs_sp_selector', 'bs_sp_color', 'bs_sp_width');

