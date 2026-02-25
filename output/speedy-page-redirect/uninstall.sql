-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gdd_spr_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gdd_speedy_page_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gdd_speedy_page_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gdd_speedy_page_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gdd_speedy_page_redirect');

