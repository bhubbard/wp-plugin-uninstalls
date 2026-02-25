-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpos_anylc_redirect', 'wpos_anylc_site_uid', 'wp_aas_install_notice');
DELETE FROM wp_options WHERE option_name LIKE 'wpos_anylc_optin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%width';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%width';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%width';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%width';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%height';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%visible_panels';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%visible_panels';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%visible_panels';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%visible_panels';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%shadow';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%shadow';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%shadow';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shadow';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%orientation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%orientation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%orientation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%orientation';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%panel_distance';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%panel_distance';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%panel_distance';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%panel_distance';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%max_openedaccordion_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%max_openedaccordion_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%max_openedaccordion_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%max_openedaccordion_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%open_panel_on';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%open_panel_on';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%open_panel_on';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%open_panel_on';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%autoplay';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%mouse_wheel';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%mouse_wheel';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%mouse_wheel';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mouse_wheel';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%attachment_link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%attachment_link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%attachment_link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%attachment_link';

