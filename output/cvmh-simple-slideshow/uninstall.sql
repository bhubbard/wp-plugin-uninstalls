-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cvmh_slideshow');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cvmh_slide_image', '_cvmh_slide_0', '_cvmh_slide_new_window', '_cvmh_slide_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cvmh_slide_image', '_cvmh_slide_0', '_cvmh_slide_new_window', '_cvmh_slide_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cvmh_slide_image', '_cvmh_slide_0', '_cvmh_slide_new_window', '_cvmh_slide_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cvmh_slide_image', '_cvmh_slide_0', '_cvmh_slide_new_window', '_cvmh_slide_link');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cvmh_slide_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cvmh_slide_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cvmh_slide_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cvmh_slide_%';

