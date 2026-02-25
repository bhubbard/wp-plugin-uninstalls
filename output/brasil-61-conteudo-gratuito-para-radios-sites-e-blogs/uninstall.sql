-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('br61_key', 'br61_cron', 'br61_importar_imagem', 'br61_importar_resumo', 'br61_backlink', 'br61_autor', 'br61_status', 'br61_data_importacao', 'br61_categorias', 'br61_tags', 'b61_post_update_date', 'b61_update_last_page');
DELETE FROM wp_options WHERE option_name LIKE 'b61_categoria_last_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'b61_tag_last_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'b61_categoria_total_pages_%';
DELETE FROM wp_options WHERE option_name LIKE 'b61_tag_total_pages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('b61_post_view', 'b61_noticia_id', 'br61_post_create_date', 'br61_post_update_date', 'br61_post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('b61_post_view', 'b61_noticia_id', 'br61_post_create_date', 'br61_post_update_date', 'br61_post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('b61_post_view', 'b61_noticia_id', 'br61_post_create_date', 'br61_post_update_date', 'br61_post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('b61_post_view', 'b61_noticia_id', 'br61_post_create_date', 'br61_post_update_date', 'br61_post_id');

