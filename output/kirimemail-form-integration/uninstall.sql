-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ke_wpform_api_username', 'ke_form_active', 'ke_wpform_api_token', 'ke-wp-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kirimemail');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kirimemail');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kirimemail');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kirimemail');

