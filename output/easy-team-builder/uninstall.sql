-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etb_plugin_do_activation_redirect', 'etb_textBgColor', 'etb_textColor', 'etb_socialColor', 'etb_socialHover', 'etb_titleFontSize', 'etb_titleColor', 'etb_designationFontSize', 'etb_designationColor', 'etb_contentFontSize');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('our-team', 'fbLink', 'ttLink', 'linLink', 'githLink');
DELETE FROM wp_usermeta WHERE meta_key IN ('our-team', 'fbLink', 'ttLink', 'linLink', 'githLink');
DELETE FROM wp_termmeta WHERE meta_key IN ('our-team', 'fbLink', 'ttLink', 'linLink', 'githLink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('our-team', 'fbLink', 'ttLink', 'linLink', 'githLink');

