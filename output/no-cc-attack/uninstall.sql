-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_cc_attack_second', 'no_cc_attack_time', 'no_cc_attack_redirect_url');

