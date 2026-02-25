#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aistpr_api_settings'
wp option delete 'aistpr_prediction_settings'
wp option delete 'aistpr_general_settings'
wp option delete 'aistpr_notification_settings'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'aistpr_default_lead_time'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aistpr_prediction_%' OR option_name LIKE '_site_transient_aistpr_prediction_%'"
wp transient delete 'aistpr_recent_predictions'
wp transient delete 'aistpr_stock_statistics'
wp transient delete 'aistpr_total_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aistpr_predictions_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aistpr_predictions_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aistpr_predictions_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aistpr_predictions_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aistpr_lead_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aistpr_lead_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aistpr_lead_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aistpr_lead_time'"
