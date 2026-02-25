-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppss', 'PW_Alerts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ppss_header_scripts', '_ppss_footer_scripts', '_ppss_styles', '_ppss_extras', '_ppss_footer_extras');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ppss_header_scripts', '_ppss_footer_scripts', '_ppss_styles', '_ppss_extras', '_ppss_footer_extras');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ppss_header_scripts', '_ppss_footer_scripts', '_ppss_styles', '_ppss_extras', '_ppss_footer_extras');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ppss_header_scripts', '_ppss_footer_scripts', '_ppss_styles', '_ppss_extras', '_ppss_footer_extras');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ppss_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ppss_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ppss_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ppss_%';

