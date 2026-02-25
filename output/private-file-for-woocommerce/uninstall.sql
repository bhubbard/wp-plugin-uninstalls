-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'pffw_shared_page_options', 'shared_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pffw_owner', 'pffw_private_file_file', 'pffw_private_file_download_count', 'pffw_private_page_view_count', 'pffw_directory');
DELETE FROM wp_usermeta WHERE meta_key IN ('pffw_owner', 'pffw_private_file_file', 'pffw_private_file_download_count', 'pffw_private_page_view_count', 'pffw_directory');
DELETE FROM wp_termmeta WHERE meta_key IN ('pffw_owner', 'pffw_private_file_file', 'pffw_private_file_download_count', 'pffw_private_page_view_count', 'pffw_directory');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pffw_owner', 'pffw_private_file_file', 'pffw_private_file_download_count', 'pffw_private_page_view_count', 'pffw_directory');

