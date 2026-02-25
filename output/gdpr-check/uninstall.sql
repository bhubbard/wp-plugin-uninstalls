-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdprcompatible_status', 'gdprcompatible_do_activation_redirect');

