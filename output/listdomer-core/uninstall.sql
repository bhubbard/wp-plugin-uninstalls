-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lsdrc_activation_redirect', 'sidebars_widgets', 'widget_nav_menu', 'lsd_settings', 'lsd_activation_redirect', '_afeb_activation_redirect', 'listdomer_theme_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'lsdr_header', 'lsdr_footer', 'lsd_form', 'lsd_primary_category', 'lsd_fields', 'lsd_devices', 'lsd_skin', 'lsd_display', 'lsd_search');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'lsdr_header', 'lsdr_footer', 'lsd_form', 'lsd_primary_category', 'lsd_fields', 'lsd_devices', 'lsd_skin', 'lsd_display', 'lsd_search');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'lsdr_header', 'lsdr_footer', 'lsd_form', 'lsd_primary_category', 'lsd_fields', 'lsd_devices', 'lsd_skin', 'lsd_display', 'lsd_search');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'lsdr_header', 'lsdr_footer', 'lsd_form', 'lsd_primary_category', 'lsd_fields', 'lsd_devices', 'lsd_skin', 'lsd_display', 'lsd_search');

