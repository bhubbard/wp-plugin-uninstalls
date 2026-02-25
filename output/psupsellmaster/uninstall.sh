#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psupsellmaster_newsletter_subscribed'
wp option delete 'psupsellmaster_bp_queue'
wp option delete 'psupsellmaster_bp_analytics_upsells_last_run'
wp option delete 'psupsellmaster_bp_analytics_orders_last_run'
wp option delete 'psupsellmaster_bp_scores_last_run'
wp option delete 'psupsellmaster_admin_setup_wizard_status'
wp option delete 'psupsellmaster_installed_at'
wp option delete 'psupsellmaster_newsletter_popup_count'
wp option delete 'psupsellmaster_bp_scores_data'
wp option delete 'psupsellmaster_settings'
wp option delete 'psupsellmaster_version'
wp option delete 'psupsellmaster_type'
wp option delete 'psupsell_settings'
wp option delete 'psupsellmaster_wp_cron_analytics'
wp option delete 'upsellmaster_review_time'
wp option delete 'upsellmaster_license_key'
wp option delete 'upsellmaster_license_expiry'
wp option delete 'upsellmaster_license_status'
wp option delete 'upsellmaster_dismiss_review_notice'
wp option delete 'psupsellmaster_quick_tour'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'psupsellmaster_uploaded_attachments'
wp option delete 'psupsellmaster_bp_edd_prices_data'
wp option delete 'psupsellmaster_bp_edd_prices_last_run'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'

# Delete Transients
wp transient delete 'psupsellmaster_setup_wizard_bp_queue'
wp transient delete 'psupsellmaster_activate'
wp transient delete 'psupsellmaster_type_changed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'psupsellmaster_bp_analytics_orders_stop'
wp transient delete 'psupsellmaster_bp_analytics_orders_status'
wp transient delete 'psupsellmaster_bp_analytics_orders_tracking'
wp transient delete 'psupsellmaster_bp_analytics_upsells_stop'
wp transient delete 'psupsellmaster_bp_analytics_upsells_status'
wp transient delete 'psupsellmaster_bp_analytics_upsells_tracking'
wp transient delete 'psupsellmaster_bp_scores_stop'
wp transient delete 'psupsellmaster_bp_scores_status'
wp transient delete 'psupsellmaster_bp_scores_tracking'
wp transient delete 'psupsellmaster_bp_edd_prices_status'
wp transient delete 'psupsellmaster_bp_queue_lock'
wp transient delete 'psupsellmaster_process_analytics_upsells'
wp transient delete 'psupsellmaster_process_analytics_upsells_lock'
wp transient delete 'psupsellmaster_process_analytics_orders'
wp transient delete 'psupsellmaster_process_analytics_orders_lock'
wp transient delete 'psupsellmaster_bp_edd_prices_stop'
wp transient delete 'psupsellmaster_bp_edd_prices_tracking'

# Clear Cron Jobs
wp cron event delete 'psupsells_data_cleanup_process'
wp cron event delete 'psupsellmaster_wp_cron_daily'
wp cron event delete 'psupsellmaster_bp_analytics_orders_cron'
wp cron event delete 'psupsellmaster_bp_analytics_upsells_cron'
wp cron event delete 'psupsellmaster_bp_edd_prices_cron'
wp cron event delete 'psupsellmaster_bp_scores_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psupsellmaster_scores_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psupsellmaster_scores_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psupsellmaster_scores_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psupsellmaster_scores_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psupsellmaster_preferred_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psupsellmaster_preferred_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psupsellmaster_preferred_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psupsellmaster_preferred_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psupsellmaster_excluded_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psupsellmaster_excluded_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psupsellmaster_excluded_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psupsellmaster_excluded_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_upsell'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_upsell'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_upsell'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_upsell'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'psupsellmaster_has_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'psupsellmaster_has_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'psupsellmaster_has_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'psupsellmaster_has_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psupsellmaster_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psupsellmaster_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psupsellmaster_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psupsellmaster_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
