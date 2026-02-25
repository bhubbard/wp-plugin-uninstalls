-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oci_offload_settings', 'oci_offload_logs');
DELETE FROM wp_options WHERE option_name LIKE 'artimeof_new_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_artimeofed', '_oci_object_base');
DELETE FROM wp_usermeta WHERE meta_key IN ('_artimeofed', '_oci_object_base');
DELETE FROM wp_termmeta WHERE meta_key IN ('_artimeofed', '_oci_object_base');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_artimeofed', '_oci_object_base');

