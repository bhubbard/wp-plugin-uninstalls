-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('author_base', 'vases_settings', 'vases_http_auth_send_mail');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vases_http_auth_user', 'vases_http_auth_pass');
DELETE FROM wp_usermeta WHERE meta_key IN ('vases_http_auth_user', 'vases_http_auth_pass');
DELETE FROM wp_termmeta WHERE meta_key IN ('vases_http_auth_user', 'vases_http_auth_pass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vases_http_auth_user', 'vases_http_auth_pass');

