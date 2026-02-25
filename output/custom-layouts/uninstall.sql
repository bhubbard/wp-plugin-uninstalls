-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_layouts_breakpoints', 'custom_layouts_css_mode', 'custom_layouts_css_version_id', 'custom_layouts_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom-layouts-template-instances', 'custom-layouts-template-instance-order', 'custom-layouts-template-data', 'custom-layouts-version', 'custom-layouts-app-data', 'custom-layouts-layout', 'custom-layouts-query', 'custom-layouts-last-tab', 'custom-layouts-template-css', 'nickname', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom-layouts-template-instances', 'custom-layouts-template-instance-order', 'custom-layouts-template-data', 'custom-layouts-version', 'custom-layouts-app-data', 'custom-layouts-layout', 'custom-layouts-query', 'custom-layouts-last-tab', 'custom-layouts-template-css', 'nickname', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom-layouts-template-instances', 'custom-layouts-template-instance-order', 'custom-layouts-template-data', 'custom-layouts-version', 'custom-layouts-app-data', 'custom-layouts-layout', 'custom-layouts-query', 'custom-layouts-last-tab', 'custom-layouts-template-css', 'nickname', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom-layouts-template-instances', 'custom-layouts-template-instance-order', 'custom-layouts-template-data', 'custom-layouts-version', 'custom-layouts-app-data', 'custom-layouts-layout', 'custom-layouts-query', 'custom-layouts-last-tab', 'custom-layouts-template-css', 'nickname', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'custom-layouts-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'custom-layouts-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'custom-layouts-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'custom-layouts-%';

