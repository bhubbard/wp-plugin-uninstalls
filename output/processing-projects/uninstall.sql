-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_meta_box_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pp_project_url', '_pp_iframe_width', '_pp_iframe_height', '_pp_index_file', '_pp_project_dir');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pp_project_url', '_pp_iframe_width', '_pp_iframe_height', '_pp_index_file', '_pp_project_dir');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pp_project_url', '_pp_iframe_width', '_pp_iframe_height', '_pp_index_file', '_pp_project_dir');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pp_project_url', '_pp_iframe_width', '_pp_iframe_height', '_pp_index_file', '_pp_project_dir');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pp_%';

