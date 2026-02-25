-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TP_TextLength', 'TP_category', 'TP_MoreText', 'TP_MoreLink', 'TP_name');

