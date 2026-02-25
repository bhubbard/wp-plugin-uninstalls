-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bulb_active', 'bulb_cpt_install_dialog', 'bulb_cpt_install');

