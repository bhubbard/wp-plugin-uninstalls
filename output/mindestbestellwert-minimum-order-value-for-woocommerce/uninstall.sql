-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bb_minorderval_value', 'bb_minorderval_msg_cart', 'bb_minorderval_msg_checkout');

