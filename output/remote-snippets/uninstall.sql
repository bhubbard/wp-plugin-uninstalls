-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('remotesnippet_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_remotesnippets_error', '_remotesnippets', '_remotesnippets_error_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_remotesnippets_error', '_remotesnippets', '_remotesnippets_error_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_remotesnippets_error', '_remotesnippets', '_remotesnippets_error_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_remotesnippets_error', '_remotesnippets', '_remotesnippets_error_status');

