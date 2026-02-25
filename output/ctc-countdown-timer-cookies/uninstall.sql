-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctc_countdown_options', '_ctc_countdown_reset');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctc_countdown_options', '_ctc_countdown_reset');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctc_countdown_options', '_ctc_countdown_reset');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctc_countdown_options', '_ctc_countdown_reset');

