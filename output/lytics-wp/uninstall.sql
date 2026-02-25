-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lyticswp_access_token', 'lyticswp_account_name', 'lyticswp_account_id', 'lyticswp_aid', 'lyticswp_domain', 'lyticswp_enable_tag', 'lyticswp_debug_mode', 'lyticswp_ignore_admin_users', 'lyticswp_tag_config');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lyticswp_widget_configuration', '_lytics_widget_status', '_lytics_widget_description', 'lytics_widget_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lyticswp_widget_configuration', '_lytics_widget_status', '_lytics_widget_description', 'lytics_widget_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lyticswp_widget_configuration', '_lytics_widget_status', '_lytics_widget_description', 'lytics_widget_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lyticswp_widget_configuration', '_lytics_widget_status', '_lytics_widget_description', 'lytics_widget_description');

