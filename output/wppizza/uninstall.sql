-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'posts_per_page ', '_site_transient_update_plugins', 'active_sitewide_plugins', 'site_url', 'widget_wppizza_widgets', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_children';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_css';
DELETE FROM wp_options WHERE option_name LIKE '%_bestsellers';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_templates_print';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'show_admin_bar_front', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'show_admin_bar_front', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'show_admin_bar_front', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'show_admin_bar_front', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cemail';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cemail';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cemail';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cemail';

