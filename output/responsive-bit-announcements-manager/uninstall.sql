-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rb_announcements_start_date', 'rb_announcements_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('rb_announcements_start_date', 'rb_announcements_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('rb_announcements_start_date', 'rb_announcements_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rb_announcements_start_date', 'rb_announcements_end_date');

