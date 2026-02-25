-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_cptb_default_tab_position', 'wb_cptb_hide_tab_heading', 'wb_cptb_global_tabs_behavior', 'wb_cptb_use_custom_the_content', 'wb_cptb_enable_default_tabs', 'wb_cptb_review_banner_state', 'wb_cptb_review_banner_remind_start', 'wb-cptb-feedback-submitted-at', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wb_tab_position', '_wb_tab_nickname', '_wb_tab_products', '_wb_tab_slug', '_wb_tab_products_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wb_tab_position', '_wb_tab_nickname', '_wb_tab_products', '_wb_tab_slug', '_wb_tab_products_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wb_tab_position', '_wb_tab_nickname', '_wb_tab_products', '_wb_tab_slug', '_wb_tab_products_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wb_tab_position', '_wb_tab_nickname', '_wb_tab_products', '_wb_tab_slug', '_wb_tab_products_slug');

