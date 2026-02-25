-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lvtoeupr_rate', 'lvtoeupr_do_activation_redirect');

