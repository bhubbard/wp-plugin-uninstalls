-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sorcart_enable', 'multipurchase_enable', 'addtocart_button_text');

