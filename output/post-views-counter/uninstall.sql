-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_views_counter_settings_general', 'post_views_counter_settings_other', 'post_views_counter_settings_display', 'post_views_counter_pro_version', 'post_views_counter_version', 'post_views_counter_settings_integrations', 'post_views_counter_activation_date', 'post_views_counter_ip_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pvc_dashboard');

