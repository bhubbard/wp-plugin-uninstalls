-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imageflux_exclude_extensions', 'imageflux_storage', 'imageflux_domain', 'imageflux_format', 'imageflux_quality', 'imageflux_exif_removal');

