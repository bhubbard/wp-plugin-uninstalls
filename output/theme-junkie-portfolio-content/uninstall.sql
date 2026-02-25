-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tj_image_ids', 'tj_portfolio_short_desc', 'tj_portfolio_client', 'tj_portfolio_link', 'tj_video_embed_portfolio');
DELETE FROM wp_usermeta WHERE meta_key IN ('tj_image_ids', 'tj_portfolio_short_desc', 'tj_portfolio_client', 'tj_portfolio_link', 'tj_video_embed_portfolio');
DELETE FROM wp_termmeta WHERE meta_key IN ('tj_image_ids', 'tj_portfolio_short_desc', 'tj_portfolio_client', 'tj_portfolio_link', 'tj_video_embed_portfolio');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tj_image_ids', 'tj_portfolio_short_desc', 'tj_portfolio_client', 'tj_portfolio_link', 'tj_video_embed_portfolio');

