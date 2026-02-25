-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mxmtzc_hire_developer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_olena_theme_install_notice_viewed', '_how_does_it_work_notice_viewed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_olena_theme_install_notice_viewed', '_how_does_it_work_notice_viewed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_olena_theme_install_notice_viewed', '_how_does_it_work_notice_viewed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_olena_theme_install_notice_viewed', '_how_does_it_work_notice_viewed');

