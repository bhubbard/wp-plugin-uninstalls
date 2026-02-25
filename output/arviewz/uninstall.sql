-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arviewz_settings', 'arviewz_add_model_url_page', 'arviewz_3d_model_store_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('model_url', 'btn_url', 'embed_html', 'add_3d_model');
DELETE FROM wp_usermeta WHERE meta_key IN ('model_url', 'btn_url', 'embed_html', 'add_3d_model');
DELETE FROM wp_termmeta WHERE meta_key IN ('model_url', 'btn_url', 'embed_html', 'add_3d_model');
DELETE FROM wp_commentmeta WHERE meta_key IN ('model_url', 'btn_url', 'embed_html', 'add_3d_model');

