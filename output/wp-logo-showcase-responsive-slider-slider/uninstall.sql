-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpos_anylc_redirect', 'wpos_anylc_site_uid', 'wpls_install_notice');
DELETE FROM wp_options WHERE option_name LIKE 'wpos_anylc_optin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wplss_slide_link', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wplss_slide_link', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wplss_slide_link', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wplss_slide_link', '_wp_attachment_image_alt');

