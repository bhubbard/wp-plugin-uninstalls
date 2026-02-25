-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amaspace_key_customizer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ama_precompose_config', '_ama_products_with_precompose', '_thumbnail_id', '_ama_wp_product_parrent_id', '_ama_precompose_id', '_amaspace_customizer_show_iframe');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ama_precompose_config', '_ama_products_with_precompose', '_thumbnail_id', '_ama_wp_product_parrent_id', '_ama_precompose_id', '_amaspace_customizer_show_iframe');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ama_precompose_config', '_ama_products_with_precompose', '_thumbnail_id', '_ama_wp_product_parrent_id', '_ama_precompose_id', '_amaspace_customizer_show_iframe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ama_precompose_config', '_ama_products_with_precompose', '_thumbnail_id', '_ama_wp_product_parrent_id', '_ama_precompose_id', '_amaspace_customizer_show_iframe');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

