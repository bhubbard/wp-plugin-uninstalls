#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkboss_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'linkboss_access_token'
wp option delete 'linkboss_custom_query'
wp option delete 'linkboss_acf_enabled'
wp option delete 'default_product_cat'
wp option delete 'lbw_cron_notice_dismissed'
wp option delete 'linkboss_sync_speed'
wp option delete 'linkboss_woo_enabled'
wp option delete 'linkboss_sync_batch'
wp option delete 'linkboss_installed'
wp option delete 'linkboss_version'
wp option delete 'linkboss_setup_wizard'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"
wp transient delete 'linkboss_sync_ongoing'
wp transient delete 'linkboss_sync_batch_table_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tve_landing_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_page_content_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ct_builder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
