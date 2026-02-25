-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awspn_show_on_order_and_email', 'awspn_product_price_note_separator', 'awspn_product_price_note', 'awspn_excl_price_on_order_and_email', 'awspn_excl_sep_on_order_and_email', 'awspn_product_price_note_oe_label', 'awspn_product_price_note_oe_texts');
DELETE FROM wp_usermeta WHERE meta_key IN ('awspn_show_on_order_and_email', 'awspn_product_price_note_separator', 'awspn_product_price_note', 'awspn_excl_price_on_order_and_email', 'awspn_excl_sep_on_order_and_email', 'awspn_product_price_note_oe_label', 'awspn_product_price_note_oe_texts');
DELETE FROM wp_termmeta WHERE meta_key IN ('awspn_show_on_order_and_email', 'awspn_product_price_note_separator', 'awspn_product_price_note', 'awspn_excl_price_on_order_and_email', 'awspn_excl_sep_on_order_and_email', 'awspn_product_price_note_oe_label', 'awspn_product_price_note_oe_texts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awspn_show_on_order_and_email', 'awspn_product_price_note_separator', 'awspn_product_price_note', 'awspn_excl_price_on_order_and_email', 'awspn_excl_sep_on_order_and_email', 'awspn_product_price_note_oe_label', 'awspn_product_price_note_oe_texts');

