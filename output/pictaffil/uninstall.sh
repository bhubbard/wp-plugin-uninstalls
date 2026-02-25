#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pictaffil_paa_enabled'
wp option delete 'pictaffil_paa_access_key'
wp option delete 'pictaffil_paa_secret_key'
wp option delete 'pictaffil_paa_partner_tag'
wp option delete 'pictaffil_api_key'
wp option delete 'pictaffil_paa_region'
wp option delete 'pictaffil_affiliate_id'
wp option delete 'pictaffil_settings'
wp option delete 'pictaffil_card_settings'
wp option delete 'pictaffil_search_method'
wp option delete 'pictaffil_history'
wp option delete 'pictaffil_version'
wp option delete 'pictaffil_installed'
wp option delete 'pictaffil_error_logs'
wp option delete 'pictaffil_amazon_search_type'
wp option delete 'pictaffil_amazon_access_key'
wp option delete 'pictaffil_amazon_secret_key'
wp option delete 'pictaffil_integration_options'
wp option delete 'pictaffil_auto_format_links'
wp option delete 'pictaffil_db_version'

# Delete Transients
wp transient delete 'pictaffil_paa_credentials_valid'
wp transient delete 'pictaffil_search_stats_all'
wp transient delete 'pictaffil_search_stats_day'
wp transient delete 'pictaffil_search_stats_week'
wp transient delete 'pictaffil_search_stats_month'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pictaffil_debug_%' OR option_name LIKE '_site_transient_pictaffil_debug_%'"
wp transient delete 'pictaffil_api_key_verified'
wp transient delete 'pictaffil_account_info'
wp transient delete 'pictaffil_last_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pictaffil_carousel_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pictaffil_carousel_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pictaffil_carousel_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pictaffil_carousel_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pictaffil_saved_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pictaffil_saved_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pictaffil_saved_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pictaffil_saved_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
