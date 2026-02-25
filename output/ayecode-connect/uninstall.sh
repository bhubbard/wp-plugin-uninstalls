#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_acdi_replacement_cat_ids'
wp option delete '_acdi_page_featured_images'
wp option delete 'elementor_active_kit'
wp option delete '_acdi_replacement_post_ids'
wp option delete '_acdi_replacement_archive_item_ids'
wp option delete '_acdi_original_elementor_active_kit'
wp option delete 'elementor_pro_theme_builder_conditions'
wp option delete '_acdi_demo_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_blog_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licences'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_secret'"
wp option delete 'exup_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_support'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_support_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_signatures'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_id'"
wp option delete 'ayecode_turnstile_options'
wp option delete 'ayecode_turnstile_verified'
wp option delete 'whl_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_blog_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_user_sites'"
wp option delete 'uwp_activation_redirect'
wp option delete 'uwp_setup_wizard_notice'
wp option delete 'ds_no_downgrade'
wp option delete 'ayecode_connect_blog_token'
wp option delete 'ayecode-ui-settings'
wp option delete 'aui_options'
wp option delete 'wp-font-awesome-settings'
wp option delete 'rgmk_google_map_api_key'

# Delete Transients
wp transient delete 'ac-demo-import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_remote_user_info' OR option_name LIKE '_site_transient_%_remote_user_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_site_moved' OR option_name LIKE '_site_transient_%_site_moved'"
wp transient delete 'ac_test_connection'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_support_user_key' OR option_name LIKE '_site_transient_%_support_user_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_activation_secret' OR option_name LIKE '_site_transient_%_activation_secret'"
wp transient delete '_gd_activation_redirect'
wp transient delete 'gd_social_importer_redirect'
wp transient delete 'ayecode_connect_demos'
wp transient delete 'geodir_cache_excluded_uris'
wp transient delete 'wp-font-awesome-settings-version'

# Clear Cron Jobs
wp cron event delete 'ayecode_connect_sync_licenses'
wp cron event delete 'geodir_flush_rewrite_rules'
wp cron event delete 'geodir_plugin_background_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_cat_default_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ayecode_demo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ayecode_demo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ayecode_demo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ayecode_demo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ayecode_demo_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ayecode_demo_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ayecode_demo_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ayecode_demo_img'"
