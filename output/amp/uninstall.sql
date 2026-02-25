-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amp_customizer', 'amp-options', 'amp_css_transient_monitor_time_series', 'amp_url_validation_queue');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'created_date_gmt');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'created_date_gmt');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'created_date_gmt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'created_date_gmt');

