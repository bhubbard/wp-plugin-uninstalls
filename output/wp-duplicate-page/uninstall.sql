-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njt_duplicate_post_types', 'njt_duplicate_text_link', 'njt_duplicate_in_editor', 'njt_duplicate_reviewed', 'njt_duplicate_roles');

