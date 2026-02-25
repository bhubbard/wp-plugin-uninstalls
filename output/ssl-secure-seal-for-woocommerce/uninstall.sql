-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sswc_show_on_checkout', 'sswc_image', 'sswc_embed', 'sswc_show_on_cart', 'sswc_show_on_product', 'sswc_show_on_account');

