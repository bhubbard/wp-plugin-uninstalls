#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_asa_db_collections_version'
wp option delete '_asa_hide_meta_link'
wp option delete '_asa_error_email_notification'
wp option delete '_asa_first_activation'
wp option delete '_asa_cache_active'
wp option delete '_asa_cache_skip_on_admin'
wp option delete '_asa_product_preview'
wp option delete '_asa_use_flat_box_default'
wp option delete '_asa_parse_comments'
wp option delete '_asa_async_load'
wp option delete '_asa_ajax_css_ani'
wp option delete '_asa_use_short_amazon_links'
wp option delete '_asa_use_amazon_price_only'
wp option delete '_asa_debug'
wp option delete '_asa_get_rating_alternative'
wp option delete '_asa_custom_widget_class'
wp option delete '_asa_replace_empty_main_price'
wp option delete '_asa_disable_prefetch'
wp option delete '_asa_error_handling'
wp option delete '_asa_admin_error_frontend'
wp option delete '_asa_use_error_tpl'
wp option delete '_asa_error_email_notification_bridge_page_id'
wp option delete '_asa_cache_lifetime'
wp option delete '_asa_cache_dir'
wp option delete '_asa_cache_disable_variable_lifetime'
wp option delete '_asa_amazon_api_key'
wp option delete '_asa_amazon_api_secret_key'
wp option delete '_asa_amazon_tracking_id'
wp option delete '_asa_api_connection_type'
wp option delete '_asa_pa_api_version'
wp option delete '_asa_amazon_country_code'
wp option delete '_asa_donated'
wp option delete '_asa_newsletter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error-code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error-code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error-code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error-code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error-message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error-asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error-asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error-asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error-asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'error-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'error-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'error-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'error-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
