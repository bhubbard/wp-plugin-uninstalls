#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmc_reviews_opt_in_style'
wp option delete 'gmc_reviews_delivery_days'
wp option delete 'gmc_reviews_badge_position'
wp option delete 'gmc_reviews_merchant_id'
wp option delete 'gmc_reviews_gtm_enabled'
wp option delete 'gmc_reviews_gtm_event_name'
wp option delete 'brumigmcreview_debug_mode'
wp option delete 'gmc_reviews_script_placement'
wp option delete 'brumigmcreview_optin_count'

