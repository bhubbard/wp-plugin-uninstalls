-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myreads_plugin_version', 'myreads_auto_regenerate_json', 'myreads_default_pattern', 'myreads_csv_file', 'myreads_flush_rewrites', 'myreads_csv_import_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_myreads_author', '_myreads_format', '_myreads_rating', '_myreads_ratingStyle', '_myreads_isFavorite', '_myreads_currentlyReading', '_myreads_amazonLink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_myreads_author', '_myreads_format', '_myreads_rating', '_myreads_ratingStyle', '_myreads_isFavorite', '_myreads_currentlyReading', '_myreads_amazonLink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_myreads_author', '_myreads_format', '_myreads_rating', '_myreads_ratingStyle', '_myreads_isFavorite', '_myreads_currentlyReading', '_myreads_amazonLink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_myreads_author', '_myreads_format', '_myreads_rating', '_myreads_ratingStyle', '_myreads_isFavorite', '_myreads_currentlyReading', '_myreads_amazonLink');

