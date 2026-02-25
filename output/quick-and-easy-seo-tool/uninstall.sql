-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick-and-easy-seo', 'woocommerce_shop_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'qeseo_to_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qeseo_title_tag_meta_value', '_qeseo_metades_meta_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qeseo_title_tag_meta_value', '_qeseo_metades_meta_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qeseo_title_tag_meta_value', '_qeseo_metades_meta_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qeseo_title_tag_meta_value', '_qeseo_metades_meta_value');

