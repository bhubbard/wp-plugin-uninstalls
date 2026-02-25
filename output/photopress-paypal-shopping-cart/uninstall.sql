-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addToCartButtonName', 'wspsc_private_key_one', 'photopress_spsc_option_name');

