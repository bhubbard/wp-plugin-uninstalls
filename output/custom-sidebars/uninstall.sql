-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'cs_modifiable', 'cs_sidebars');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_sidebars_explain', 'wpmudev_sc_dismissed_notice', 'dismissed_wp_pointers', '_cs_replacements');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_sidebars_explain', 'wpmudev_sc_dismissed_notice', 'dismissed_wp_pointers', '_cs_replacements');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_sidebars_explain', 'wpmudev_sc_dismissed_notice', 'dismissed_wp_pointers', '_cs_replacements');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_sidebars_explain', 'wpmudev_sc_dismissed_notice', 'dismissed_wp_pointers', '_cs_replacements');

