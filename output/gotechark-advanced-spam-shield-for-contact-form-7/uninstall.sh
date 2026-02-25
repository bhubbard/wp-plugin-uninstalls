#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7ass_blocked_email_domains'
wp option delete 'cf7ass_blocked_email_addresses'
wp option delete 'cf7ass_blocked_email_message'
wp option delete 'cf7ass_blocked_domain_message'
wp option delete 'cf7ass_min_submission_time'
wp option delete 'cf7ass_fast_submission_message'
wp option delete 'cf7ass_submission_limit'
wp option delete 'cf7ass_submission_time_window'
wp option delete 'cf7ass_max_submission_message'
wp option delete 'cf7ass_too_many_submissions_message'
wp option delete 'cf7ass_duplicate_submission_message'

# Delete Transients
wp transient delete 'cf7ass_dep_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cf7ass_submission_count%' OR option_name LIKE '_site_transient_cf7ass_submission_count%'"

