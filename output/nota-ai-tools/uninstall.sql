-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nota_script_access_roles', 'nota_news_display_name', 'nota_news_market_id', 'nota_disable_tool_script', 'nota_debug', 'nota_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nota_client_user_id', 'nota_selected_brand_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('nota_client_user_id', 'nota_selected_brand_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('nota_client_user_id', 'nota_selected_brand_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nota_client_user_id', 'nota_selected_brand_id');

