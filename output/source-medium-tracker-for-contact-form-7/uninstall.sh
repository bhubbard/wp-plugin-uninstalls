#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smt_cf7_enable_conversion_tracking'
wp option delete 'smt_cf7_google_ads_conversion_id'
wp option delete 'smt_cf7_google_ads_conversion_label'
wp option delete 'smt_cf7_ga_measurement_id'
wp option delete 'smt_cf7_ga_api_secret'
wp option delete 'smt_cf7_enable_facebook_conversion_tracking'
wp option delete 'smt_cf7_facebook_pixel_id'
wp option delete 'smt_cf7_db_version'

