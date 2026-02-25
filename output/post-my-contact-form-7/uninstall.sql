-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_c2p_active_tab');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_2_post-type', '_cf7_2_post-type_source', '_cf7_2_post-map', '_cf7_2_post_form_submitted', '_config_errors', '_cf7_2_post_flush_rewrite_rules', '_cf7_2_post-taxonomy', '_mail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_2_post-type', '_cf7_2_post-type_source', '_cf7_2_post-map', '_cf7_2_post_form_submitted', '_config_errors', '_cf7_2_post_flush_rewrite_rules', '_cf7_2_post-taxonomy', '_mail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_2_post-type', '_cf7_2_post-type_source', '_cf7_2_post-map', '_cf7_2_post_form_submitted', '_config_errors', '_cf7_2_post_flush_rewrite_rules', '_cf7_2_post-taxonomy', '_mail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_2_post-type', '_cf7_2_post-type_source', '_cf7_2_post-map', '_cf7_2_post_form_submitted', '_config_errors', '_cf7_2_post_flush_rewrite_rules', '_cf7_2_post-taxonomy', '_mail');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_source-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_source-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_source-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_source-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_names-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_names-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_names-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_names-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_name-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_name-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_name-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy_name-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map_taxonomy-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7_2_post-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7_2_post-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7_2_post-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7_2_post-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_2_post_map_meta-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_2_post_map_meta-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_2_post_map_meta-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_2_post_map_meta-%';

