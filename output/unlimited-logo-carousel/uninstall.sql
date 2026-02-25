-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ed_logo_carousel_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ed_logo_id', 'ed_logo_link', 'ed_logo_tooltip', 'ed_logo_target', 'ed_logo_carousel_style', 'ed_logo_carousel_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('ed_logo_id', 'ed_logo_link', 'ed_logo_tooltip', 'ed_logo_target', 'ed_logo_carousel_style', 'ed_logo_carousel_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('ed_logo_id', 'ed_logo_link', 'ed_logo_tooltip', 'ed_logo_target', 'ed_logo_carousel_style', 'ed_logo_carousel_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ed_logo_id', 'ed_logo_link', 'ed_logo_tooltip', 'ed_logo_target', 'ed_logo_carousel_style', 'ed_logo_carousel_slider');

