-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subitosms_options_array');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subitosms_mobnumber', 'subitosms_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('subitosms_mobnumber', 'subitosms_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('subitosms_mobnumber', 'subitosms_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subitosms_mobnumber', 'subitosms_sent');

