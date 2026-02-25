-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speedy_search_settings_polyplugins', 'speedy_search_notice_dismissed_polyplugins', 'speedy_search_advanced_notice_polyplugins', 'speedy_search_version_polyplugins', 'speedy_search_indexes_polyplugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_average_rating', '_price', 'edd_price', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_average_rating', '_price', 'edd_price', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_average_rating', '_price', 'edd_price', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_average_rating', '_price', 'edd_price', '_sku');

