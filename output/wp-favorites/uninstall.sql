-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_favorites_inclusive_search', 'wp_favorites_non_logged_in_html', 'wp_favorites_version', 'wp_favorites_logged_in_no_faves_html', 'wp_favorites_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_favorites');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_favorites');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_favorites');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_favorites');

