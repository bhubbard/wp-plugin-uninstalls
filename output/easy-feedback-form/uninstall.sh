#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eeform_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eeform_form_errors_%' OR option_name LIKE '_site_transient_eeform_form_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eeform_feedback_success_%' OR option_name LIKE '_site_transient_eeform_feedback_success_%'"

