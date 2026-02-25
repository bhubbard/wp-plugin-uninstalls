#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NextBestOffer_OLS_use_case'
wp option delete 'NextBestOffer_OLS_api_key'
wp option delete 'NextBestOffer_OLS_max_rule_length'
wp option delete 'NextBestOffer_OLS_min_support'
wp option delete 'NextBestOffer_OLS_min_confidence'
wp option delete 'NextBestOffer_OLS_training_mode'
wp option delete 'NextBestOffer_OLS_batch_size'
wp option delete 'NextBestOffer_OLS_email_recommendations'
wp option delete 'NextBestOffer_OLS_recom_mode'
wp option delete 'NextBestOffer_OLS_selected_partial'
wp option delete 'NextBestOffer_OLS_logs'

# Delete Transients
wp transient delete 'NextBestOffer_OLS_training_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_NextBestOffer_OLS_temporary_recommendations%' OR option_name LIKE '_site_transient_NextBestOffer_OLS_temporary_recommendations%'"

