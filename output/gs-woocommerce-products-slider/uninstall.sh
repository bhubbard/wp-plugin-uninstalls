#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gswps_dummy_shortcode_data_created'
wp option delete 'gswps_dismiss_demo_data_notice'
wp option delete 'gswps_install_demo_shortcodes_initially'
wp option delete 'gs_woops_slider_version'
wp option delete 'gs_woo_slider_shortcode_prefs'
wp option delete 'GSWPS_active_time'
wp option delete 'GSWPS_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gswps_activation_redirect'
wp option delete 'review_dismiss'
wp option delete 'gsadmin_active_time'
wp option delete 'gswps_dummy_woops_data_created'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'GS_woo_Slider_plugin_permalinks_flushed'

# Delete Transients
wp transient delete 'gswps_dummy_shortcode_data_creating'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gswps_ignore_notice279'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gswps_ignore_notice279'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gswps_ignore_notice279'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gswps_ignore_notice279'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_template_type'"
