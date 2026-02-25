-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitcx_aipb_ai_api_key', 'bitcx_aipb_page_id', 'bitcraftx_aipb_page_id', 'bitcx_aipb_page_created');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bitcx_portfolio_item_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('bitcx_portfolio_item_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('bitcx_portfolio_item_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bitcx_portfolio_item_link');

