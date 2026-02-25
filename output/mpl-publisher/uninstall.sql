-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpl_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_author_column_publisher', 'show_category_column_publisher', 'show_tags_column_publisher');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_author_column_publisher', 'show_category_column_publisher', 'show_tags_column_publisher');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_author_column_publisher', 'show_category_column_publisher', 'show_tags_column_publisher');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_author_column_publisher', 'show_category_column_publisher', 'show_tags_column_publisher');

