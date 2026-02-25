-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ji_redirect_default', 'ji_redirect_logout');
DELETE FROM wp_options WHERE option_name LIKE 'ji_register_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ji_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('ji_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('ji_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ji_welcome_panel');

