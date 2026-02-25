-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmew_sister_dismissed', 'bmew_key', 'bmew_usage_disable', 'bmew_debug', 'bmew_checkout_reorder', 'bmew_checkout_optin_label', 'bmew_skip_cart');

