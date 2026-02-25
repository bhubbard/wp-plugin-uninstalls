-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mkFacebookAppID', 'mkFacebookHashtag', 'mkTwitterContent', 'mkWarningTextFacebook', 'mkWarningText', 'mkForLoggedin', 'warningText', 'warningTextFacebook');

