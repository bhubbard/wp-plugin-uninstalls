#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'corona_test_results_options'
wp option delete 'dismissed_corona_test_results_rating_nag'
wp option delete 'corona_test_results_activationtime'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed_corona_test_results_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_created'"
wp option delete 'corona_test_results_license_error'
wp option delete 'corona_test_results_quickcheckin_page_created'
wp option delete 'corona_test_results_result_invalid_page_created'

# Delete Transients
wp transient delete 'corona_test_results_license_error'
wp transient delete 'corona_test_results_license_activated'

