-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpi_settings', 'rpi_settings_dropdown', '$rpi_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rpi_label%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rpi_label%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rpi_label%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rpi_label%';

