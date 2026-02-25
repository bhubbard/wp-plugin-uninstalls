-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socproofgen_position', 'socproofgen_duration', 'socproofgen_animation', 'socproofgen_names', 'socproofgen_products', 'socproofgen_bg_color', 'socproofgen_image_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_socproofgen_show_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_socproofgen_show_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_socproofgen_show_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_socproofgen_show_popup');

