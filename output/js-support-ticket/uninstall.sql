-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'jssupportticket', 'jssupportticket-pageid', 'jssupportticket_do_activation_redirect');

