-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_conditions_admin_notices', 'woocommerce_conditions_db_version', 'wccs_settings', 'wccs_version', 'wccs_version_upgraded_from', 'wccs_install_timestamp', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart', 'asnp_ewd_review', 'wccs_installing', 'wccs_discounted_products', 'wccs_can_read_variation_cached_prices_hash');
DELETE FROM wp_options WHERE option_name LIKE '%_added';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'wccs_can_read_variation_cached_prices_hash_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_ewd_sale_badges_free_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_ewd_sale_badges_free_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_ewd_sale_badges_free_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_ewd_sale_badges_free_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

