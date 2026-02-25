-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentpulse_review_frequency', 'contentpulse_email_notifications', 'contentpulse_notification_email', 'contentpulse_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contentpulse_last_reviewed', '_contentpulse_next_review_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contentpulse_last_reviewed', '_contentpulse_next_review_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contentpulse_last_reviewed', '_contentpulse_next_review_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contentpulse_last_reviewed', '_contentpulse_next_review_date');

