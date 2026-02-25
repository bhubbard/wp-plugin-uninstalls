-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleswitch', 'simpleswitch_onvalue', 'simpleswitch_offvalue');

