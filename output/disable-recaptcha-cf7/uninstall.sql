-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dr_options', 'fh_dr_do_activation_redirect', 'fh_dr_show_activation_msg');

