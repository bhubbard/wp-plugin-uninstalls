#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'epkb_one_time_notices'
wp option delete 'epkb_ongoing_notices'
wp option delete 'elementor_cpt_support'
wp option delete 'epkb_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epkb_not_completed_setup_wizard_%'"
wp option delete 'epkb_ai_sync_lock_time'
wp option delete 'epkb_ai_last_sync_completed'
wp option delete 'epkb_ai_configuration'
wp option delete 'epkb_ai_widget_configuration'
wp option delete 'epkb_ai_training_data_configuration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epkb_articles_sequence_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'epkb_categories_sequence_%'"
wp option delete 'epkb_openai_api_key'
wp option delete 'epkb_version'
wp option delete 'epkb_error_log'
wp option delete 'amgr_error_log'
wp option delete 'epkb_last_seen_version'
wp option delete 'epkb_config_1'
wp option delete 'epkb_orignal_config_1'
wp option delete 'epkb_articles_sequence_1'
wp option delete 'epkb_categories_sequence_1'
wp option delete 'epkb_categories_icons_images_1'
wp option delete 'epkb_post_type_1_category_children'
wp option delete 'epkb_long_notices'
wp option delete 'epkb_elementor_settings_dismissed'
wp option delete 'epkb_delete_all_kb_data'
wp option delete 'epkb_flags'
wp option delete 'epkb_openai_key'
wp option delete 'epkb_ml_custom_css_1'
wp option delete 'epkb_ml_faqs_kb_id_1'
wp option delete 'epkb_ml_faqs_category_ids_1'
wp option delete 'epkb_faq_group_ids_1'
wp option delete 'epkb_ai_widget_configuration_1'
wp option delete 'epkb_ai_training_data_table_version'
wp option delete 'epkb_ai_content_analysis_table_version'
wp option delete 'epkb_ai_messages_table_version'
wp option delete 'asea_version'
wp option delete 'asea_version_first'
wp option delete 'asea_error_log'
wp option delete 'asea_license_key'
wp option delete 'asea_license_state'
wp option delete 'elay_version'
wp option delete 'elay_version_first'
wp option delete 'elay_error_log'
wp option delete 'elay_license_key'
wp option delete 'elay_license_state'
wp option delete 'eprf_version'
wp option delete 'eprf_version_first'
wp option delete 'eprf_error_log'
wp option delete 'eprf_license_key'
wp option delete 'eprf_license_state'
wp option delete 'epie_version'
wp option delete 'epie_version_first'
wp option delete 'epie_error_log'
wp option delete 'epie_license_key'
wp option delete 'epie_license_state'
wp option delete 'kblk_version'
wp option delete 'kblk_version_first'
wp option delete 'kblk_error_log'
wp option delete 'kblk_license_key'
wp option delete 'kblk_license_state'
wp option delete 'emkb_version'
wp option delete 'emkb_version_first'
wp option delete 'emkb_error_log'
wp option delete 'emkb_license_key'
wp option delete 'emkb_license_state'
wp option delete 'widg_version'
wp option delete 'widg_version_first'
wp option delete 'widg_error_log'
wp option delete 'widg_license_key'
wp option delete 'widg_license_state'
wp option delete '_epie_import_current_kb_id'
wp option delete '_epie_import_current_step'
wp option delete '_epie_import_selected_rows'
wp option delete '_epie_import_processed_count'

# Delete Transients
wp transient delete '_epkb_crel_notice'
wp transient delete '_epkb_crel_notice2'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_epkb_ai_error_notification_count_%' OR option_name LIKE '_site_transient_epkb_ai_error_notification_count_%'"
wp transient delete 'epkb_ai_sync_lock'
wp transient delete 'epkb_ai_rate_limit_until'
wp transient delete 'epkb_chatgpt_rate_limit'
wp transient delete 'epkb_ai_dashboard_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_epkb_sync_progress_%' OR option_name LIKE '_site_transient_epkb_sync_progress_%'"
wp transient delete 'epkb_ai_chat_security_logs'
wp transient delete 'epkb_openai_rate_limit'
wp transient delete '_epkb_faqs_flush_rewrite_rules'
wp transient delete '_epkb_plugin_activated'
wp transient delete '_epkb_delete_all_kb_data'
wp transient delete '_epkb_plugin_installed'
wp transient delete '_epie_import_articles_to_import'

# Clear Cron Jobs
wp cron event delete 'epkb_do_sync_cron_event'
wp cron event delete 'epkb_do_content_analysis_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faqs_order_sequence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faqs_order_sequence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faqs_order_sequence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faqs_order_sequence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epkb_glossary_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epkb_glossary_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epkb_glossary_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epkb_glossary_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
