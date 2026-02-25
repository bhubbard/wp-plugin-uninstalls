-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wps_bidouille_deactivate_purge', 'wps_save_settings', 'wps_white_list', 'select2_wps_users', 'wps_options_tools', 'no_autoupdates_plugins', 'autoupdates_themes', 'wps_display', 'wps_notifs_ajax', 'select2_wps_posts', 'wps_archive_cpt_remove_from_cache', 'wps_cpt_remove_from_cache', 'list_post_without_cache', 'wpsbidouille_admin_footer_text_rated', 'woocommerce_shop_page_id', 'active_sitewide_plugins', 'wps_old_plugin', 'disable-notice-autoupdates', 'wps_query_themes', 'disable-notice-update-traduction', 'wps_certificate_ssl', 'disable-notice-themes-inactive', 'disable-notice-plugins-inactive', 'disable-notice-db-prefix', 'disable-notice-ssl', 'disable-notice-check-old-plugins', 'disable-notice-wordpress-update', 'disable-notice-plugins-update', 'disable-notice-themes-update', 'disable-notice-wps-hide-login', 'disable-notice-wps-limit-login', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%-update';
DELETE FROM wp_options WHERE option_name LIKE 'wps_api_plugin_information_%';
DELETE FROM wp_options WHERE option_name LIKE 'wps_api_category_premium_%';

