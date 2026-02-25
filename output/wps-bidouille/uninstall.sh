#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_bidouille_deactivate_purge'
wp option delete 'wps_save_settings'
wp option delete 'wps_white_list'
wp option delete 'select2_wps_users'
wp option delete 'wps_options_tools'
wp option delete 'no_autoupdates_plugins'
wp option delete 'autoupdates_themes'
wp option delete 'wps_display'
wp option delete 'wps_notifs_ajax'
wp option delete 'select2_wps_posts'
wp option delete 'wps_archive_cpt_remove_from_cache'
wp option delete 'wps_cpt_remove_from_cache'
wp option delete 'list_post_without_cache'
wp option delete 'wpsbidouille_admin_footer_text_rated'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wps_old_plugin'
wp transient delete 'disable-notice-autoupdates'
wp transient delete 'wps_query_themes'
wp transient delete 'disable-notice-update-traduction'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-update' OR option_name LIKE '_site_transient_%-update'"
wp transient delete 'wps_certificate_ssl'
wp transient delete 'disable-notice-themes-inactive'
wp transient delete 'disable-notice-plugins-inactive'
wp transient delete 'disable-notice-db-prefix'
wp transient delete 'disable-notice-ssl'
wp transient delete 'disable-notice-check-old-plugins'
wp transient delete 'disable-notice-wordpress-update'
wp transient delete 'disable-notice-plugins-update'
wp transient delete 'disable-notice-themes-update'
wp transient delete 'disable-notice-wps-hide-login'
wp transient delete 'disable-notice-wps-limit-login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_api_plugin_information_%' OR option_name LIKE '_site_transient_wps_api_plugin_information_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wps_api_category_premium_%' OR option_name LIKE '_site_transient_wps_api_category_premium_%'"
wp transient delete 'update_plugins'

