#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lpc_feedback_dismissed'
wp option delete 'lpc_asked_feedback'
wp option delete 'lpc_accepted_cgv'
wp option delete 'lpc_jquery_warning_dismissed_notice'
wp option delete 'lpc_jquery_migrate_wp56_dismissed_notice'
wp option delete 'lpc_packagings'
wp option delete 'lpc_secured_return'
wp option delete 'lpc_current_credentials_tested'
wp option delete 'lpc_current_credentials_valid'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lpc_expert_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lpc_domicileas_%'"
wp option delete 'lpc_origin_company_name'
wp option delete 'lpc_parent_id_webservices'
wp option delete 'lpc_pickup_map_type'
wp option delete 'lpc_pwd_webservices'
wp option delete 'lpc_pwd_encrypted'
wp option delete 'lpc_no_shipping_class_updated'
wp option delete 'lpc_customers_download_return_label'
wp option delete 'lpc_relay_types'
wp option delete 'lpc_capabilities_per_country_fr'
wp option delete 'lpc_capabilities_per_country_dom1'
wp option delete 'lpc_capabilities_per_country'
wp option delete 'lpc_domiciless_IsAlwaysFree'
wp option delete 'lpc_domicileas_IsAlwaysFree'
wp option delete 'lpc_expert_IsAlwaysFree'
wp option delete 'lpc_relay_IsAlwaysFree'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'purge_colissimo_labels'
wp cron event delete 'update_colissimo_statuses'

