-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primer_notification_posts_count_dismissed', 'primer_notification_posts_count_hide_until', 'my_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primer_data', 'primer_data_frontend');
DELETE FROM wp_usermeta WHERE meta_key IN ('primer_data', 'primer_data_frontend');
DELETE FROM wp_termmeta WHERE meta_key IN ('primer_data', 'primer_data_frontend');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primer_data', 'primer_data_frontend');

