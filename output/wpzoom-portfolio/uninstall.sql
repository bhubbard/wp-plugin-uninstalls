-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpzoom_portfolio_root', 'wpzoom_portfolio_base', 'default_portfolio', 'wpzoom-portfolio-settings', 'downloaded_font_files');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpzb_portfolio_video_type', '_wpzb_portfolio_video_id', '_wpzb_portfolio_video_url', 'wpz_reorder_view_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpzb_portfolio_video_type', '_wpzb_portfolio_video_id', '_wpzb_portfolio_video_url', 'wpz_reorder_view_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpzb_portfolio_video_type', '_wpzb_portfolio_video_id', '_wpzb_portfolio_video_url', 'wpz_reorder_view_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpzb_portfolio_video_type', '_wpzb_portfolio_video_id', '_wpzb_portfolio_video_url', 'wpz_reorder_view_mode');

