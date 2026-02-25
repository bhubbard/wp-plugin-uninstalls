-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_occurrence_timestamp_start', 'first_occurrence_timestamp_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_occurrence_timestamp_start', 'first_occurrence_timestamp_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_occurrence_timestamp_start', 'first_occurrence_timestamp_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_occurrence_timestamp_start', 'first_occurrence_timestamp_end');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'before_order_cookie_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'before_order_cookie_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'before_order_cookie_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'before_order_cookie_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'after_order_cookie_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'after_order_cookie_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'after_order_cookie_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'after_order_cookie_%';

