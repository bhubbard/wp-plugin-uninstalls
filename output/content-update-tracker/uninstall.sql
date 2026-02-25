-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cutp_post_excluded', '_cutp_notes', 'last_updated_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('cutp_post_excluded', '_cutp_notes', 'last_updated_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('cutp_post_excluded', '_cutp_notes', 'last_updated_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cutp_post_excluded', '_cutp_notes', 'last_updated_date');

