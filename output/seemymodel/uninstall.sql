-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seemymodel_options_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_seemymodel_armodel_id', '_product_seemymodel_3d_viewer_embed_tag');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_seemymodel_armodel_id', '_product_seemymodel_3d_viewer_embed_tag');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_seemymodel_armodel_id', '_product_seemymodel_3d_viewer_embed_tag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_seemymodel_armodel_id', '_product_seemymodel_3d_viewer_embed_tag');

