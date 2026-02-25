#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seedprod_app_settings'
wp option delete 'seedprod_settings'
wp option delete 'seedprod_theme_template_preview_mode'
wp option delete 'seedprod_partner_optinmonster_activated'
wp option delete 'seedprod_partner_wpcode_activated'
wp option delete 'seedprod_partner_wpconsent_activated'
wp option delete 'seedprod_coming_soon_page_id'
wp option delete 'seedprod_maintenance_mode_page_id'
wp option delete 'seedprod_404_page_id'
wp option delete 'seedprod_login_page_id'
wp option delete 'seedprod_builder_debug'
wp option delete 'global_css_page_id'
wp option delete 'seedprod_global_css_page_id'
wp option delete 'seedprod_token'
wp option delete 'seedprod_user_id'
wp option delete 'seedprod_api_token'
wp option delete 'seedprod_api_key'
wp option delete 'seedprod_api_message'
wp option delete 'seedprod_license_name'
wp option delete 'seedprod_a'
wp option delete 'seedprod_per'
wp option delete 'seedprod_allow_usage_tracking'
wp option delete 'seedprod_hide_review'
wp option delete 'seedprod_review'
wp option delete 'seedprod_over_time'
wp option delete 'seedprod_coming_soon_page_setup_status'
wp option delete 'seedprod_verify_wizard_options'
wp option delete 'seedprod_dismiss_setup_wizard'
wp option delete 'seedprod_free_templates_subscribed'
wp option delete 'active_sitewide_plugins'
wp option delete 'seedprod_login_page_slug'
wp option delete 'seedprod_theme_enabled'
wp option delete 'seedprod_theme_id'
wp option delete 'seedprod_onetime_flush_rewrite'
wp option delete 'seedprod_referred_by'
wp option delete 'seedprod_migration_run_once'
wp option delete 'seed_cspv5_license_key'
wp option delete 'seed_csp4_settings_content'
wp option delete 'seed_cspv5_settings_content'
wp option delete 'seedprod_csp4_migrated'
wp option delete 'seedprod_csp4_imported'
wp option delete 'seed_csp4_settings_design'
wp option delete 'seed_csp4_settings_advanced'
wp option delete 'seedprod_show_csp4'
wp option delete 'dashboards_disabled'
wp option delete 'optinmonster_referred_by'
wp option delete 'mypaykit_site_token'
wp option delete 'mypaykit_token'
wp option delete 'seedprod_api_key '
wp option delete 'seedprod_dismiss_settings_lite_cta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seedprod_dismiss_upsell_%'"
wp option delete 'seedprod_one_click_upgrade'
wp option delete 'seedprod_temp_theme_template_data'
wp option delete 'seedprod_validate_json'
wp option delete 'seedprod_cspv5_imported'
wp option delete 'seedprod_show_cspv5'
wp option delete 'seedprod_cspv5_migrated'
wp option delete 'seedprod_run_activation'
wp option delete 'seedprod_dismiss_upsell_2'
wp option delete 'seedprod_stripe_connect_origin'
wp option delete 'seedprod_stripe_connect_token'

# Delete Transients
wp transient delete '_seedprod_welcome_screen_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'seedprod_notifications'
wp cron event delete 'seedprod_lite_fetch_help_docs'
wp cron event delete 'seedprod_fetch_help_docs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_page_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_page_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_page_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_page_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_theme_template_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_theme_template_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_theme_template_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_theme_template_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_builder_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_builder_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_builder_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_builder_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_edited_with_seedprod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_edited_with_seedprod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_edited_with_seedprod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_edited_with_seedprod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_page_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_page_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_page_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_page_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_is_theme_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_is_theme_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_is_theme_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_is_theme_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seedprod_personalization_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seedprod_personalization_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seedprod_personalization_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seedprod_personalization_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_block_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_block_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_block_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_block_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_converted_from_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_converted_from_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_converted_from_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_converted_from_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seedprod_seen_ai_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seedprod_seen_ai_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seedprod_seen_ai_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seedprod_seen_ai_message'"
