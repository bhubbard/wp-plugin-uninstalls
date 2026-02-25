-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderm00n_open_graph_settings', 'wonderm00n_open_graph_admin_notice', 'wonderm00n_open_graph_version', 'post-smtp-recommendation-notice-hidden', 'post_smtp_global_recommendation_notice_hidden');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webdados_fb_open_graph_specific_title', '_webdados_fb_open_graph_specific_image', '_webdados_fb_open_graph_specific_description', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webdados_fb_open_graph_specific_title', '_webdados_fb_open_graph_specific_image', '_webdados_fb_open_graph_specific_description', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webdados_fb_open_graph_specific_title', '_webdados_fb_open_graph_specific_image', '_webdados_fb_open_graph_specific_description', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webdados_fb_open_graph_specific_title', '_webdados_fb_open_graph_specific_image', '_webdados_fb_open_graph_specific_description', 'thumbnail_id');

