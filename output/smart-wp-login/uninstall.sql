-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swpl_settings', 'swpl_version', 'swpl_l', 'swpl_r', 'swpl_rp');

