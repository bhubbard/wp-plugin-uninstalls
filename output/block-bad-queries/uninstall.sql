-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbq-block-count', 'bbq_options_free', 'bbq-firewall-dismiss-notice');

