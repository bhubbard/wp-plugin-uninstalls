-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acns_api_url', 'acns_api_key', 'acns_list_id', 'acns_show_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acns_error_log', 'acns_check_newsletter');
DELETE FROM wp_usermeta WHERE meta_key IN ('acns_error_log', 'acns_check_newsletter');
DELETE FROM wp_termmeta WHERE meta_key IN ('acns_error_log', 'acns_check_newsletter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acns_error_log', 'acns_check_newsletter');

