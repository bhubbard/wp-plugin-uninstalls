#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'breeze_first_install'
wp option delete 'breeze_basic_settings'
wp option delete 'breeze_preload_settings'
wp option delete 'breeze_file_settings'
wp option delete 'breeze_advanced_settings'
wp option delete 'breeze_heartbeat_settings'
wp option delete 'breeze_cdn_integration'
wp option delete 'breeze_varnish_cache'
wp option delete 'breeze_inherit_settings'
wp option delete 'breeze_show_incompatibility'
wp option delete 'breeze_advanced_settings_120'
wp option delete 'breeze_new_update'
wp option delete 'breeze_ecommerce_detect'
wp option delete 'breeze_exclude_url_pages'
wp option delete 'breeze_hide_notice'
wp option delete 'breeze_version'
wp option delete 'breeze_minified_hashes'
wp option delete 'woo_multi_currency_params'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocs_storage'
wp option delete 'edd_settings'
wp option delete 'ecwid_store_page_id'
wp option delete 'ecwid_last_store_page_id'
wp option delete '_cartflows_permalink'
wp option delete 'wpsc_shortcode_page_ids'
wp option delete 'ec_option_accountpage'
wp option delete 'ec_option_cartpage'
wp option delete 'bigcommerce_cart_page_id'
wp option delete 'bigcommerce_checkout_page_id'
wp option delete 'bigcommerce_account_page_id'
wp option delete 'bigcommerce_address_page_id'
wp option delete 'bigcommerce_gift_balance_page_id'
wp option delete 'bigcommerce_gift_certificate_page_id'
wp option delete 'bigcommerce_login_page_id'
wp option delete 'bigcommerce_registration_page_id'
wp option delete 'plugins_to_be_updated_count'
wp option delete 'breeze_updated_plugin_count'
wp option delete 'breeze_all_plugins_update_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'breeze_%'"
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'active_sitewide_plugins'
wp option delete 'breeze_js_trycatch'
wp option delete 'breeze_version_upgraded_from'

# Delete Transients
wp transient delete 'breeze_custom_varnish_server_active'
wp transient delete 'breeze_cache_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'breeze_purge_cache'
wp cron event delete 'breeze_clear_remote_gravatar'
wp cron event delete 'breeze_scheduled_purge'
wp cron event delete 'spai_lqip_generate_event'
wp cron event delete 'breeze_pixel_cache_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
