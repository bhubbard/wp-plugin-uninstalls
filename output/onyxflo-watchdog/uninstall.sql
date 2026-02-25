-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onyxflo_enable_cart_check', 'onyxflo_auto_hold', 'onyxflo_email');

