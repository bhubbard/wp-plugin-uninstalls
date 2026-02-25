-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('timeline_express_date_time_migration_notice', 'timeline_express_date_time_migration_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('announcement-date-time', 'announcement_date', 'announcement-date-format');
DELETE FROM wp_usermeta WHERE meta_key IN ('announcement-date-time', 'announcement_date', 'announcement-date-format');
DELETE FROM wp_termmeta WHERE meta_key IN ('announcement-date-time', 'announcement_date', 'announcement-date-format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('announcement-date-time', 'announcement_date', 'announcement-date-format');

