-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accordion-slider-v', 'accordion-slider-type', 'accordion-slider-installDate', 'rpg-slider-images-default', 'asg_cns_review', 'asg_plugins_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slider-images', 'accordion-slider-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('slider-images', 'accordion-slider-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('slider-images', 'accordion-slider-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slider-images', 'accordion-slider-settings');

