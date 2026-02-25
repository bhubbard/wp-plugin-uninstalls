-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glossary-settings', 'glossary-customizer', 'glossary-extra', 'rgmk_google_map_api_key', 'sd_load_widgets', 'sidebars_widgets', 'dnh_dismissed_notices', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_count_terms';
DELETE FROM wp_options WHERE option_name LIKE '%_count_related_terms';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%-extra';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';
DELETE FROM wp_options WHERE option_name LIKE '%_sites';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'dnh_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'dnh_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'dnh_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'dnh_dismissed_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_link_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_link_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_link_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_link_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cpt';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cpt';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cpt';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cpt';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tag';

