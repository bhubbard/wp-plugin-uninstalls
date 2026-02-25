-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('login_redirect_url_hosts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('login_redirect_url', 'login_redirect_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('login_redirect_url', 'login_redirect_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('login_redirect_url', 'login_redirect_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('login_redirect_url', 'login_redirect_page');

