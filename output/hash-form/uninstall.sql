-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hashform_first_activation', 'hashform_dismissed_notices', '_hashform_security_salt', 'hashform_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hashform_dismissed_notices', 'managetoplevel_page_hashform-entriescolumnshidden', 'hashform_styles', 'managetoplevel_page_hashformcolumnshidden', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('hashform_dismissed_notices', 'managetoplevel_page_hashform-entriescolumnshidden', 'hashform_styles', 'managetoplevel_page_hashformcolumnshidden', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('hashform_dismissed_notices', 'managetoplevel_page_hashform-entriescolumnshidden', 'hashform_styles', 'managetoplevel_page_hashformcolumnshidden', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hashform_dismissed_notices', 'managetoplevel_page_hashform-entriescolumnshidden', 'hashform_styles', 'managetoplevel_page_hashformcolumnshidden', '_wp_attachment_image_alt');

