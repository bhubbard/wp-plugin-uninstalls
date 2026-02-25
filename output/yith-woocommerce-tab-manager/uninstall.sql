-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_tab_manager_wc_added', 'ywtm_porting_200_counter', 'ywtm_porting_200_backup', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith_tab_manager_installing', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ywtm_show_tab', '_ywtm_order_tab', '_ywtm_tab_title', '_ywtm_tab_ported', '_ywtm_is_editable', '_ywtm_origin', '_ywtm_tab_content_in', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ywtm_show_tab', '_ywtm_order_tab', '_ywtm_tab_title', '_ywtm_tab_ported', '_ywtm_is_editable', '_ywtm_origin', '_ywtm_tab_content_in', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ywtm_show_tab', '_ywtm_order_tab', '_ywtm_tab_title', '_ywtm_tab_ported', '_ywtm_is_editable', '_ywtm_origin', '_ywtm_tab_content_in', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ywtm_show_tab', '_ywtm_order_tab', '_ywtm_tab_title', '_ywtm_tab_ported', '_ywtm_is_editable', '_ywtm_origin', '_ywtm_tab_content_in', 'dismissed_wp_pointers', 'blog-cats');

