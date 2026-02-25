-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajax-edit-comments_security_key_count', 'wordpress_api_key', 'aec_dependency_upload_dir', 'WPAjaxEditAuthoruserOptions', 'WPAjaxEditAuthoruser_options', 'WPAjaxEditComments20');

