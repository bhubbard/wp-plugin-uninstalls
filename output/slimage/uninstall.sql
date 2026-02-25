-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slimage_enable_compression', 'slimage_server_path', 'slimage_jpegoptim_level', 'slimage_optipng_level', 'slimage_jpegoptim_extras', 'slimage_optipng_extras');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slimage_override', 'slimage_quality', 'slimage_extras');
DELETE FROM wp_usermeta WHERE meta_key IN ('slimage_override', 'slimage_quality', 'slimage_extras');
DELETE FROM wp_termmeta WHERE meta_key IN ('slimage_override', 'slimage_quality', 'slimage_extras');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slimage_override', 'slimage_quality', 'slimage_extras');

