-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fsn-countries', 'fsn-show-cart', 'fsn-shipping-min', 'fsn-all-countries', 'fsn-show-checkout', 'fsn-default-currency', 'fsn-highlight-color');

