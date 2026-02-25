-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_partners_banners');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('partnerlink', '_wp_page_template', 'partnerbanner_expires');
DELETE FROM wp_usermeta WHERE meta_key IN ('partnerlink', '_wp_page_template', 'partnerbanner_expires');
DELETE FROM wp_termmeta WHERE meta_key IN ('partnerlink', '_wp_page_template', 'partnerbanner_expires');
DELETE FROM wp_commentmeta WHERE meta_key IN ('partnerlink', '_wp_page_template', 'partnerbanner_expires');

