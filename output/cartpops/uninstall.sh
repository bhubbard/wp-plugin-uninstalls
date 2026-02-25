#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'cartpops_settings_upsells_count_per_order_type'
wp option delete 'cartpops_settings_email_template_type'
wp option delete 'cartpops_settings_email_from_name'
wp option delete 'cartpops_settings_email_from_address'
wp option delete 'new_admin_email'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'cartpops_settings_upsell_display_table_pagination'
wp option delete 'cartpops_settings_free_upsell_per_page_column_count'
wp option delete 'cartpops_settings_carousel_navigation'
wp option delete 'cartpops_settings_carousel_auto_play'
wp option delete 'cartpops_settings_carousel_pagination'
wp option delete 'cartpops_settings_carousel_navigation_prevoius_text'
wp option delete 'cartpops_settings_carousel_navigation_next_text'
wp option delete 'cartpops_settings_carousel_upsell_per_page'
wp option delete 'cartpops_settings_carousel_item_margin'
wp option delete 'cartpops_settings_carousel_item_per_slide'
wp option delete 'cartpops_settings_carousel_slide_speed'
wp option delete 'cartpops_settings_product_upsell_heading_label'
wp option delete 'cartpops_settings_product_upsell_add_to_cart_button_label'
wp option delete 'cartpops_settings_product_upsell_dropdown_default_option_label'
wp option delete 'cartpops_settings_dropdown_add_to_cart_behaviour'
wp option delete 'cartpops_settings_upsell_display_product_linkable'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'cartpops_potential_issues'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cartpops_rule_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cartpops_rule_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cartpops_rule_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cartpops_rule_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
