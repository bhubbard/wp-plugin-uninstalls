#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intel_form_track_submission_default'
wp option delete 'intel_form_track_submission_value_default'
wp option delete 'intel_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_intel_form_settings_%'"
wp option delete 'intel_demo_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_intel_activated_%' OR option_name LIKE '_site_transient_intel_activated_%'"

