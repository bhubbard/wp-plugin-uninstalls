-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpgpsc_option_settings', '_gpsc_safe_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpgpsc_page_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpgpsc_page_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpgpsc_page_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpgpsc_page_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpgpsc_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpgpsc_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpgpsc_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpgpsc_errors_%';

