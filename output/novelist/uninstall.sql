-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('novelist_imported_demo_book', 'novelist_version_upgraded_from', 'novelist_settings', 'novelist_settings_book', 'novelist_settings_styles', 'novelist_settings_misc', 'novelist_settings_addons', 'novelist_settings_licenses', 'active_sitewide_plugins', 'novelist_version', '_novelist_activation_redirect', 'novelist_extensions_feed', 'novelist_books_array', 'novelist_csv_imported_books', 'novelist_csv_import_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('novelist_pub_date_timestamp', 'novelist_hide', 'novelist_series', 'novelist_title', 'novelist_cover', 'novelist_publisher', 'novelist_pub_date', 'novelist_contributors', 'novelist_pages', 'novelist_isbn', 'novelist_asin', 'novelist_goodreads', 'novelist_purchase_links', 'novelist_synopsis', 'novelist_excerpt', 'novelist_extra');
DELETE FROM wp_usermeta WHERE meta_key IN ('novelist_pub_date_timestamp', 'novelist_hide', 'novelist_series', 'novelist_title', 'novelist_cover', 'novelist_publisher', 'novelist_pub_date', 'novelist_contributors', 'novelist_pages', 'novelist_isbn', 'novelist_asin', 'novelist_goodreads', 'novelist_purchase_links', 'novelist_synopsis', 'novelist_excerpt', 'novelist_extra');
DELETE FROM wp_termmeta WHERE meta_key IN ('novelist_pub_date_timestamp', 'novelist_hide', 'novelist_series', 'novelist_title', 'novelist_cover', 'novelist_publisher', 'novelist_pub_date', 'novelist_contributors', 'novelist_pages', 'novelist_isbn', 'novelist_asin', 'novelist_goodreads', 'novelist_purchase_links', 'novelist_synopsis', 'novelist_excerpt', 'novelist_extra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('novelist_pub_date_timestamp', 'novelist_hide', 'novelist_series', 'novelist_title', 'novelist_cover', 'novelist_publisher', 'novelist_pub_date', 'novelist_contributors', 'novelist_pages', 'novelist_isbn', 'novelist_asin', 'novelist_goodreads', 'novelist_purchase_links', 'novelist_synopsis', 'novelist_excerpt', 'novelist_extra');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

