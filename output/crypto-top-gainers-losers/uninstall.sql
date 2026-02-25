-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpcpref_crypto_gainer_gainers', 'cpcpref_crypto_gainer_losers', 'cpcpref_crypto_gainer_credits', 'cpcpref_crypto_gainer_text_color', 'cpcpref_crypto_gainer_box_color', 'cpcpref_crypto_gainer_box_width', 'cpcpref_crypto_gainer_item_padding', 'cpcpref_crypto_gainer_max_items');

