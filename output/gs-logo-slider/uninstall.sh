#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gslogo_dummy_logo_data_created'
wp option delete 'gslogo_dummy_shortcode_data_created'
wp option delete 'gs_logo_autoimport_done'
wp option delete 'gs_logo_slider_shortcode_prefs'
wp option delete 'gslogo_activation_redirect'
wp option delete 'gslogo_active_time'
wp option delete 'gslogo_maybe_later'
wp option delete 'gsadmin_maybe_later'
wp option delete 'gslogo_review_dismiss'
wp option delete 'GS_Logo_Slider_plugin_permalinks_flushed'
wp option delete 'GS_Logo_plugin_permalinks_flushed'
wp option delete 'gslogo_term_order_column_done'

# Delete Transients
wp transient delete 'gslogo_dummy_logo_data_creating'
wp transient delete 'gslogo_dummy_shortcode_data_creating'
wp transient delete 'gslogo_dummy_terms'
wp transient delete 'gslogo_dummy_attachments'
wp transient delete 'gslogo_dummy_logos'
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gslogo-demo_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gslogo-demo_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gslogo-demo_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gslogo-demo_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gslogo_ignore_notice279'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gslogo_ignore_notice279'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gslogo_ignore_notice279'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gslogo_ignore_notice279'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gs_logo_import_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gs_logo_import_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gs_logo_import_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gs_logo_import_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_logo_expire_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_logo_expire_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_logo_expire_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_logo_expire_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_image_id'"
