#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sform_recaptcha_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sform_%'"
wp option delete 'sform_settings'
wp option delete 'sform_attributes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attributes'"

# Delete Transients
wp transient delete 'sform_version_alert'

