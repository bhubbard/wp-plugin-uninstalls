-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpgp_option_settings', '_wpgp_safe_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpgp_page_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpgp_page_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpgp_page_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpgp_page_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpgp_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpgp_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpgp_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpgp_errors_%';

