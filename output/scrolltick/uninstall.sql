-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_scrolltick_options');
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf_term_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf-mt-%';
DELETE FROM wp_options WHERE option_name LIKE '_wpsf_umeta_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpsf-wc-mt%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scrolltick_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scrolltick_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scrolltick_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scrolltick_options');

