-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addtocart_btn_text_simple', 'addtocart_btn_text_variable', 'addtocart_btn_text_external', 'addtocart_btn_text_grouped');

