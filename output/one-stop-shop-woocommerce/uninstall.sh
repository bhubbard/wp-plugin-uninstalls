#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_eu_tax_helper_last_rate_changeset'
wp option delete 'woocommerce_tax_based_on'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oss_hide_notice_%'"
wp option delete 'oss_use_oss_procedure'
wp option delete 'oss_fixed_gross_prices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tmp_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oss_woocommerce_notification_sent_%'"
wp option delete 'one_stop_shop_woocommerce'
wp option delete 'oss_woocommerce_reports_running'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oss_woocommerce_observer_report_%'"
wp option delete 'oss_enable_auto_observation'
wp option delete 'oss_woocommerce_reports'
wp option delete 'woocommerce_gzd_version'
wp option delete 'oss_report_date_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result'"
wp option delete 'oss_fixed_gross_prices_for_third_countries'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'oss_reports_counts'

