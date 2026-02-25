-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_oscw_sc_actived', '_oscw_product_apply', '_oscw_condition_relation', '_oscw_conditions', '_oscw_include_products', '_oscw_exclude_products', '_oscw_above_content', '_oscw_main_content', '_oscw_under_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_oscw_sc_actived', '_oscw_product_apply', '_oscw_condition_relation', '_oscw_conditions', '_oscw_include_products', '_oscw_exclude_products', '_oscw_above_content', '_oscw_main_content', '_oscw_under_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_oscw_sc_actived', '_oscw_product_apply', '_oscw_condition_relation', '_oscw_conditions', '_oscw_include_products', '_oscw_exclude_products', '_oscw_above_content', '_oscw_main_content', '_oscw_under_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_oscw_sc_actived', '_oscw_product_apply', '_oscw_condition_relation', '_oscw_conditions', '_oscw_include_products', '_oscw_exclude_products', '_oscw_above_content', '_oscw_main_content', '_oscw_under_content');

