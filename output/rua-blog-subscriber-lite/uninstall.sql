-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rua_blog_subscriber_db_version', 'rua_site_name', 'rua_site_url', 'rua_site_contact_form', 'rua_company_address', 'rua_company_city', 'rua_company_state', 'rua_company_zip', 'rua_company_phone_number', 'rua_from_email_address', 'rua_email_subject', 'rua_email_logo', 'rua_form_header', 'rua_custom_message', 'rua_button_text', 'rua_blog_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

