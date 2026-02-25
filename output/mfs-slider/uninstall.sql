-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_version', 'update_plugins', 'acf_plugin_updates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'mfs_slider_data_de_inicio', 'mfs_slider_data_de_termino', 'mfs_slider_link', 'mfs_slider_imagem_desktop', 'mfs_slider_imagem_mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'mfs_slider_data_de_inicio', 'mfs_slider_data_de_termino', 'mfs_slider_link', 'mfs_slider_imagem_desktop', 'mfs_slider_imagem_mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'mfs_slider_data_de_inicio', 'mfs_slider_data_de_termino', 'mfs_slider_link', 'mfs_slider_imagem_desktop', 'mfs_slider_imagem_mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'mfs_slider_data_de_inicio', 'mfs_slider_data_de_termino', 'mfs_slider_link', 'mfs_slider_imagem_desktop', 'mfs_slider_imagem_mobile');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_per_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_per_page';

