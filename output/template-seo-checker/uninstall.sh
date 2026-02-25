#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jja_tsc_summary_report'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tsc_coef_error_id_%' OR option_name LIKE '_site_transient_tsc_coef_error_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tsc_error_key_%' OR option_name LIKE '_site_transient_tsc_error_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tsc_error_id_%' OR option_name LIKE '_site_transient_tsc_error_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tsc_coef_%' OR option_name LIKE '_site_transient_tsc_coef_%'"

