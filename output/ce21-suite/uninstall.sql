-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ce21_access_token', 'ce21_token_expiry', 'authorizeURI_ce21', 'tenantId_ce21', 'ce21_authentication_key', 'backendURI_ce21', 'baseAPIURI_ce21', 'wp_upe_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_article_authentication', '_wp_page_template', '_post_authentication_custom_metabox_ce21', '_sign_in_ce21', '_CE21_CustomerId');
DELETE FROM wp_usermeta WHERE meta_key IN ('_article_authentication', '_wp_page_template', '_post_authentication_custom_metabox_ce21', '_sign_in_ce21', '_CE21_CustomerId');
DELETE FROM wp_termmeta WHERE meta_key IN ('_article_authentication', '_wp_page_template', '_post_authentication_custom_metabox_ce21', '_sign_in_ce21', '_CE21_CustomerId');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_article_authentication', '_wp_page_template', '_post_authentication_custom_metabox_ce21', '_sign_in_ce21', '_CE21_CustomerId');

