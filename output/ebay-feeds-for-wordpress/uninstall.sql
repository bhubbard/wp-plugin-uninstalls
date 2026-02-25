-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebay-feeds-hide-results-from-search-engines', 'ebay-feeds-for-wordpress-default', 'ebay-feeds-for-wordpress-default-number', 'ebay-feeds-for-wordpress-link', 'ebay-feeds-for-wordpress-link-open-blank', 'ebay-feed-for-wordpress-flush-cache', 'ebay-feeds-for-wordpress-nofollow-links', 'ebay-feeds-for-wordpress-debug', 'ebay-feeds-for-wordpress-item-div-wrapper', 'ebay-feeds-for-wordpress-disable-header', 'ebay-feed-for-wordpress-ssl', 'ebay_feeds_for_wordpress_fallback', 'ebay-feeds-for-wordpress-default-header', 'ebay-feeds-for-wordpress-imax-max-width', 'ebay-feed-for-wordpress-force-feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewpf_ignore_ar_warning');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewpf_ignore_ar_warning');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewpf_ignore_ar_warning');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewpf_ignore_ar_warning');

