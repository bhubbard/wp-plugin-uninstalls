-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'cp_initialize_notifications', 'widget_block', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front';
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page';

