#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nab_show_ai_setup_screen'
wp option delete 'nab_is_subscription_deprecated'
wp option delete 'nelioab_account_settings'
wp option delete 'nelio-ab-testing_settings'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'nab_site_id'
wp option delete 'nab_api_secret'
wp option delete 'neliosr_standalone'
wp option delete 'nab_version'
wp option delete 'nab_last_quota_notification_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'nab_subscription'
wp option delete 'nab_subscription_addons'

# Delete Transients
wp transient delete 'nab_news'
wp transient delete 'nab_products'
wp transient delete 'nab_site_object'

# Clear Cron Jobs
wp cron event delete 'nab_start_scheduled_experiment'
wp cron event delete 'nab_check_running_experiment'
wp cron event delete 'nab_check_quota'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_experiment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_experiment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_experiment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_experiment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_are_timeline_results_definitive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_are_timeline_results_definitive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_are_timeline_results_definitive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_are_timeline_results_definitive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_timeline_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_timeline_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_timeline_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_timeline_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_alternatives'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_alternatives'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_alternatives'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_alternatives'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_control_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_control_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_control_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_control_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_last_alternative_applied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_last_alternative_applied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_last_alternative_applied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_last_alternative_applied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_experiment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_experiment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_experiment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_experiment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_custom_permalink_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_custom_permalink_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_custom_permalink_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_custom_permalink_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_builder_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_builder_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_builder_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_builder_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadpages_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadpages_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadpages_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadpages_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_variation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_variation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_variation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_variation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nab_is_result_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nab_is_result_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nab_is_result_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nab_is_result_public'"
