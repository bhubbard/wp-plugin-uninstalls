-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pay_page_id', 'techskype_upgrade_woo-sodexo');
DELETE FROM wp_options WHERE option_name LIKE 'techskype_update_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sodexo_source_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('sodexo_source_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('sodexo_source_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sodexo_source_info');

