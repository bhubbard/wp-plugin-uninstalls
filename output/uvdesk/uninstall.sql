-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uvdesk_access_token', 'uvdesk_client_key', 'uvdesk_company_domain', 'uvdesk_secret_key', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'first_name');

