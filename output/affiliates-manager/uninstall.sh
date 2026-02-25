#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpam_db_version'
wp option delete 'wpam_options_version'
wp option delete 'wpam_payout_report_generated'
wp option delete 'wp_affiliates_manager_referrers'
wp option delete 'wp_affiliates_manager_payouts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_email'"
wp option delete 'wpam_logfile_suffix'

