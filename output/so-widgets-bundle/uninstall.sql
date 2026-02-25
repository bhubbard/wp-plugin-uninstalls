-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteorigin_installer', 'siteorigin_installer_admin_dismissed', 'siteorigin_premium_affiliate_id', 'sowb_block_migration', 'siteorigin_widget_bundle_version', 'siteorigin_widgets_old_widgets', 'siteorigin_widgets_new_widgets', 'siteorigin_widgets_active', 'so_contact_hashes', 'siteorigin_installer_product_data', 'sow:cleared', 'siteorigin_panels_widgets', 'siteorigin_panels_widget_dialog_tabs');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%]';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('teasers_dismissed', 'panels_data', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('teasers_dismissed', 'panels_data', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('teasers_dismissed', 'panels_data', '_wp_attachment_image_alt', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('teasers_dismissed', 'panels_data', '_wp_attachment_image_alt', '_wp_attached_file');

