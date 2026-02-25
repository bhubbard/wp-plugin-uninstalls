-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selupload_username', 'selupload_pass', 'selupload_auth', 'selupload_container', 'selupload_path_in_storage', 'selupload_debug', 'selupload_lazyuploading', 'selupload_notoverewrite', 'selupload_delafter', 'selupload_filter', 'selupload_del');

