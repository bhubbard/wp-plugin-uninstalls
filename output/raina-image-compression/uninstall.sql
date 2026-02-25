-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rainimco_option_name', 'raina_image_compression_version', 'raina_image_compression_activated', 'raina_skip_compression_session');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rainimco_already_compressed', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('rainimco_already_compressed', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('rainimco_already_compressed', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rainimco_already_compressed', '_wp_attachment_image_alt');

