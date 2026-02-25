-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swm', 'swm_end', 'swm_max', 'swm_z_index');

