#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intufind_api_key'
wp option delete 'intufind_workspace_id'

# Delete Transients
wp transient delete 'intufind_connection_verified'
wp transient delete 'intufind_cloud_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_taxonomy' OR option_name LIKE '_site_transient_%_taxonomy'"

# Clear Cron Jobs
wp cron event delete 'intufind_scheduled_sync'
wp cron event delete 'intufind_process_sync_batch'
wp cron event delete 'intufind_process_sync_batch_taxonomy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'intufind_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'intufind_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'intufind_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'intufind_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pa_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pa_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pa_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pa_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ta_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ta_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ta_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ta_image'"
