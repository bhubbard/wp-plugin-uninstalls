#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_aa_language'
wp option delete 'wps_aa_google_api_key'
wp option delete 'wps_aa_results_title'
wp option delete 'wps_aa_instances'
wp option delete 'wps_aa_review'
wp option delete 'wps_aa_install_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"

