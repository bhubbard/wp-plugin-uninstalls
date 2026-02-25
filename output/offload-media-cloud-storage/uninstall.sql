-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acoofmf_cdn_base_urls');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_do_activation_redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acoofm_presigned_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('acoofm_presigned_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('acoofm_presigned_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acoofm_presigned_urls');

