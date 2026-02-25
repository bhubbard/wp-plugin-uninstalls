-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maakapay_admin_mail', 'maakapay_accepting_currencies', 'maakapay_mode', 'maakapay_test', 'maakapay_live');

