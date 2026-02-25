#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wp_session_list'
wp option delete 'ic_epc_first_activation'
wp option delete 'IC_EPC_activation_message'
wp option delete 'implecode_wp_hidden_tooltips'
wp option delete 'implecode_wp_tooltips'
wp option delete 'ic_cat_wizard_woo_choice'
wp option delete 'ic_hidden_notices'
wp option delete 'ic_hidden_boxes'
wp option delete 'ic_epc_tracking_notice'
wp option delete 'ic_cat_recommended_extensions'
wp option delete 'ic_block_woo_template_file'
wp option delete 'ic_allow_woo_template_file'
wp option delete 'IC_EPC_install'
wp option delete 'archive_multiple_settings'
wp option delete 'single_names'
wp option delete 'archive_names'
wp option delete 'first_activation_version'
wp option delete 'ecommerce_product_catalog_ver'
wp option delete 'product_archive_page_id'
wp option delete 'product_archive'
wp option delete 'sample_product_id'
wp option delete 'old_sort_bar'
wp option delete 'multi_single_options'
wp option delete 'enable_product_listing'
wp option delete 'catalog_lightbox'
wp option delete 'catalog_magnifier'
wp option delete 'default_product_thumbnail'
wp option delete 'ic_default_product_image_id'
wp option delete 'additional_product_archive_id'
wp option delete 'product_breadcrumbs'
wp option delete 'al_permalink_options_update'
wp option delete 'hide_empty_bar_message'
wp option delete 'ic_disable_license_message'
wp option delete 'ic_disable_ic_updater'
wp option delete 'product_currency_settings'
wp option delete 'product_shipping_options_number'
wp option delete 'IC_EPC_activation_message_done'
wp option delete 'product_currency'
wp option delete 'custom_license_code'
wp option delete 'implecode_license_owner'
wp option delete 'no_implecode_license_error'
wp option delete 'license_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'al_product_cat_image_%'"
wp option delete 'ic_product_hidden_data_upgrade_done'
wp option delete 'archive_template'
wp option delete 'modern_grid_settings'
wp option delete 'classic_grid_settings'
wp option delete 'classic_list_settings'
wp option delete 'design_schemes'
wp option delete 'product_listing_url'
wp option delete 'catalog_image_sizes'
wp option delete 'ic_registered_settings'
wp option delete 'ic_delete_products_uninstall'
wp option delete 'ic_update_product_data_done'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ic_%'"
wp option delete 'ic_epc_allow_tracking'
wp option delete 'ic_epc_tracking_last_send'
wp option delete 'ic_epc_tracking_last_paused_send'
wp option delete 'sidebars_widgets'
wp option delete 'product_attributes_number'
wp option delete 'product_adder_theme_support_check'
wp option delete 'implecode_hide_plugin_review_info_count'
wp option delete 'post_type_x_ver'

# Delete Transients
wp transient delete '_ic_welcome_screen_activation_redirect'
wp transient delete 'implecode_extensions_data'
wp transient delete 'implecode_hide_plugin_review_info'
wp transient delete 'implecode_hide_plugin_translation_info'
wp transient delete 'ic_doing_update_product_data_loop'
wp transient delete 'ic_product_count_cache'
wp transient delete 'implecode_new_extensions_data'
wp transient delete 'implecode_hide_extensions_box'
wp transient delete 'implecode_epc_free_extensions_data'
wp transient delete 'implecode_free_extensions_data'

# Clear Cron Jobs
wp cron event delete 'ic_scheduled_hidden_data_processing'
wp cron event delete 'ic_epc_weekly_scheduled_events'
wp cron event delete 'ic_epc_daily_scheduled_events'
wp cron event delete 'ic_license_reverify_schedule'
wp cron event delete 'ic_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ic_hidden_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ic_hidden_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ic_hidden_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ic_hidden_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ic_hidden_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ic_hidden_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ic_hidden_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ic_hidden_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ic_hidden_product_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ic_hidden_product_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ic_hidden_product_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ic_hidden_product_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filterable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filterable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filterable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filterable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_extensions_box_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_extensions_box_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_extensions_box_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_extensions_box_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ic_hidden_boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ic_hidden_boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ic_hidden_boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ic_hidden_boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_ic_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_ic_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_ic_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_ic_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ic_review_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ic_review_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ic_review_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ic_review_hidden'"
