-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cognix_script', 'cognix_user_consent', 'cognix_base_url', 'cognix_tokens', 'cognix_createdResourceId', 'cognix_createdResourceName');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cognix_firstname', 'cognix_lastname', 'cognix_password', 'cognix_email', 'cognix_membername', 'cognix_curdomain');
DELETE FROM wp_usermeta WHERE meta_key IN ('cognix_firstname', 'cognix_lastname', 'cognix_password', 'cognix_email', 'cognix_membername', 'cognix_curdomain');
DELETE FROM wp_termmeta WHERE meta_key IN ('cognix_firstname', 'cognix_lastname', 'cognix_password', 'cognix_email', 'cognix_membername', 'cognix_curdomain');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cognix_firstname', 'cognix_lastname', 'cognix_password', 'cognix_email', 'cognix_membername', 'cognix_curdomain');

