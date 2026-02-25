-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('portfolios_count', 'portfolio_bootstrap', 'portfolio_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_portfolios_post_price', '_portfolios_post_phone', '_portfolios_post_mobile', 'ba_re_', '_portfolios_post_page', '_portfolios_post_client', '_portfolios_post_website');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_portfolios_post_price', '_portfolios_post_phone', '_portfolios_post_mobile', 'ba_re_', '_portfolios_post_page', '_portfolios_post_client', '_portfolios_post_website');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_portfolios_post_price', '_portfolios_post_phone', '_portfolios_post_mobile', 'ba_re_', '_portfolios_post_page', '_portfolios_post_client', '_portfolios_post_website');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_portfolios_post_price', '_portfolios_post_phone', '_portfolios_post_mobile', 'ba_re_', '_portfolios_post_page', '_portfolios_post_client', '_portfolios_post_website');

