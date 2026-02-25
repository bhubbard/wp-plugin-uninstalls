-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7_redirect_admin_notice_dismiss', 'wpcf7_redirect_banner_dismiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf7_redirect_%';

