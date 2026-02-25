#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clonable_site'
wp option delete 'clonable_api_key'
wp option delete 'clonable_woocommerce_allowed_origins'
wp option delete 'clonable_default_country_by_domain'
wp option delete 'clonable_debounce_counter'
wp option delete 'clonable_public_key'
wp option delete 'clonable_allowed_hosts_enabled'
wp option delete 'clonable_woocommerce_module_enabled'
wp option delete 'clonable_woocommerce_analytics_enabled'
wp option delete 'clonable_product_exclusions_enabled'
wp option delete 'clonable_woocommerce_enable_pdf_invoice_translation'
wp option delete 'clonable_enable_menu_language_switcher'
wp option delete 'clonable_menu_language_switcher_menu'
wp option delete 'clonable_show_flag'
wp option delete 'clonable_rounded_flag'
wp option delete 'clonable_show_text'
wp option delete 'clonable_background_color'
wp option delete 'clonable_hover_background_color'
wp option delete 'clonable_langswitch_data'
wp option delete 'clonable_enable_language_switcher'
wp option delete 'clonable_size'
wp option delete 'clonable_position'
wp option delete 'clonable_language_tag_service_enabled'
wp option delete 'clonable_langtag_data'
wp option delete 'clonable_langtag_switch'
wp option delete 'clonable_locale_service_enabled'
wp option delete 'clonable_shortcode_service_enabled'
wp option delete 'clonable_subfolder_service_enabled'
wp option delete 'clonable_max_proxy_timeout'
wp option delete 'clonable_max_upstream_requests'
wp option delete 'clonable_max_upstream_queued'
wp option delete 'clonable_subfolder_clone_origin_domain'
wp option delete 'clonable_last_sync'
wp option delete 'clonable_email_translations_excluded_addresses'
wp option delete 'clonable_wpo_replacements_by_domain'

# Delete Transients
wp transient delete 'clonable_connection_mode'
wp transient delete 'clonable_notifications'
wp transient delete 'clonable_cached_user'

# Clear Cron Jobs
wp cron event delete 'clonable_public_key_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clonable_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clonable_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clonable_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clonable_origin'"
