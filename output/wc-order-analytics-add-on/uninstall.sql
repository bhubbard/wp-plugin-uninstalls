-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfs_order_analytics');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'course_start_date', 'student_reference');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'course_start_date', 'student_reference');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'course_start_date', 'student_reference');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'course_start_date', 'student_reference');

