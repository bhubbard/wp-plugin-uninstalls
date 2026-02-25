-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xredirect', 'wpt_slug_name', 'fbar_settings', 'page_fbar_settings', 'wpt_page_slug', 'wpt_meta_description', 'wpt_meta_keywords', 'wpt_page_icon', 'wpt_page_title', 'wpt_an_image', 'wpt_responsive', 'wpt_share', 'wpt_purchase', 'wpt_close');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('demo_bar_site_url', 'demo_bar_download_url', 'demo_bar_type', 'demo_bar_type_color', 'product_type', 'product_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('demo_bar_site_url', 'demo_bar_download_url', 'demo_bar_type', 'demo_bar_type_color', 'product_type', 'product_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('demo_bar_site_url', 'demo_bar_download_url', 'demo_bar_type', 'demo_bar_type_color', 'product_type', 'product_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('demo_bar_site_url', 'demo_bar_download_url', 'demo_bar_type', 'demo_bar_type_color', 'product_type', 'product_price');

