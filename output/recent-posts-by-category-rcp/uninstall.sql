-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpcbycat_posts_per_page', 'rpcbycat_category', 'rpcbycat_order_by', 'rpcbycat_layout', 'rpcbycat_show_image', 'rpcbycat_rtl', 'rpcbycat_show_excerpt');

