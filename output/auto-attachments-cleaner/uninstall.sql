-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_attachments_cleaner_post_types', 'auto_attachments_cleaner_deleted');

