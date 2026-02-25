-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('evtb_version', 'evtb_activation_time', 'evtb_initial_save_version', 'evtb_install_date');

