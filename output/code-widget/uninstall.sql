-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cw_activation_time', 'cwrn_dismiss', 'cwrn_show_later', 'satc_dismiss');

