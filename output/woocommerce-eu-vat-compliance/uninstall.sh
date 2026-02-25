#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_eu_vat_compliance_reporting_override'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_eu_vat_compliance_store_invalid_numbers'
wp option delete 'woocommerce_eu_vat_compliance_exchange_rate_provider'
wp option delete 'woocommerce_eu_vat_compliance_vat_recording_currency'
wp option delete 'woocommerce_eu_vat_compliance_vat_region'
wp option delete 'woocommerce_eu_vat_store_id'
wp option delete 'woocommerce_eu_vat_compliance_forbid_vatable_checkout'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_eu_vat_compliance_tax_classes'
wp option delete 'woocommerce_eu_vat_compliance_pdf_footer_b2c'
wp option delete 'woocommerce_eu_vat_compliance_vat_match'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_eu_vat_cart_vat_exempt_above_currency'
wp option delete 'woocommerce_vat_compliance_last_version'
wp option delete 'woocommerce_vat_compliance_geo_locate'
wp option delete 'woocommerce_eu_vat_compliance_same_prices'
wp option delete 'wceuvat_background_tests'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wc_uk_vat_hmrc_csrf'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_default_customer_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_data'"
wp option delete 'woocommerce_vat_compliance_vat_sense_api_key'
wp option delete 'woocommerce_tax_classes'

# Delete Transients
wp transient delete 'wc_euro_vat_rates_by_iso'

# Clear Cron Jobs
wp cron event delete 'wceuvat_background_tests'

