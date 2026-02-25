-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Radius', 'Sigma', 'Sharpening', 'Threshold', 'CompressionQuality', 'AutoConLev');

