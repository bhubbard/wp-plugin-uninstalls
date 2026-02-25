-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toplist_cz_version', 'widget_toplist_cz', 'toplist_cz_dashboard_widget_user_level', 'sidebars_widgets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta-box-order_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta-box-order_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta-box-order_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta-box-order_dashboard');

