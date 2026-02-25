#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_options'"
wp option delete 'wow-questionnaire_settings_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gdpr_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_privacy_policy_options'"
wp option delete 'wow-questionnaire_privacy_policy_options'

