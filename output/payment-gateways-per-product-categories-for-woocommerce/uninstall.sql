-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_pgpp_enabled', 'alg_wc_pgpp_advanced_add_hook', 'alg_wc_pgpp_products_add_variations', 'alg_wc_pgpp_countries_restriction_number', 'alg_wc_pgpp_countries_remove_enabled', 'alg_wc_pgpp_countries_combine_condition', 'alg_wc_pgpp_advanced_fallback_gateway', 'alg_wc_pgpp_advanced_fallback_gateway_enabled', 'alg_wc_pgpp_pay_titles', 'alg_wc_pgpp_products_section_enabled', 'active_sitewide_plugins', 'alg_wc_pgpp_version');
DELETE FROM wp_options WHERE option_name LIKE '%_section_enabled';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_categories_include_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_categories_exclude_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_tags_include_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pgpp_tags_exclude_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

