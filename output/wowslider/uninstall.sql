-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wowslider_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wowslider_last_view', 'wp_wowslider_sliders_per_page', 'managewowslider_sliderscolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('wowslider_last_view', 'wp_wowslider_sliders_per_page', 'managewowslider_sliderscolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('wowslider_last_view', 'wp_wowslider_sliders_per_page', 'managewowslider_sliderscolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wowslider_last_view', 'wp_wowslider_sliders_per_page', 'managewowslider_sliderscolumnshidden');

