-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ata_logo_carousel_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ata_logo_id', 'ata_logo_link', 'ata_logo_tooltip', 'ata_logo_target', 'ata_logo_carousel_style', 'ata_logo_carousel_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('ata_logo_id', 'ata_logo_link', 'ata_logo_tooltip', 'ata_logo_target', 'ata_logo_carousel_style', 'ata_logo_carousel_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('ata_logo_id', 'ata_logo_link', 'ata_logo_tooltip', 'ata_logo_target', 'ata_logo_carousel_style', 'ata_logo_carousel_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ata_logo_id', 'ata_logo_link', 'ata_logo_tooltip', 'ata_logo_target', 'ata_logo_carousel_style', 'ata_logo_carousel_slider');

