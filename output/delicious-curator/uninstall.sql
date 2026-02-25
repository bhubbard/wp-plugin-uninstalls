-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('delicious-curator-maxitems', 'delicious-curator-delicious-user', 'delicious-curator-delicious-tag', 'delicious-curator-author', 'delicious-curator-category', 'delicious-curator-tags', 'delicious-curator-post-title', 'delicious-curator-header', 'delicious-curator-footer', 'delicious-curator-item', 'delicious-curator-prev-max-date');

