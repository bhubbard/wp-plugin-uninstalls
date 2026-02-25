-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unn_noindex_date', 'unn_noindex_search', 'unn_noindex_pages', 'unn_noindex_cat', 'unn_noindex_tags', 'unn_noindex_auth', 'unn_noindex_paged', 'unn_noindex_admin', 'unn_noindex_login', 'unn_nofollow_pages', 'unn_nofollow_archives', 'unn_nofollow_cats', 'unn_nofollow_register', 'unn_nofollow_login');

