#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcc-title-hide'
wp option delete 'wpcc-title-show'
wp option delete 'wpcc-title-text'
wp option delete 'wpcc-metric-system'
wp option delete 'wpcc-instant-result'
wp option delete 'wpcc-notification-email'
wp option delete 'wpcc-primary-color'
wp option delete 'wpcc-secondary-color'
wp option delete 'wpcc_user_agreements'
wp option delete 'wpcc_privacy_policy'
wp option delete 'wpcc_privacy_policy_url'
wp option delete 'wpcc_privacy_policy_url_text'
wp option delete 'wpcc_terms_and_conditions'
wp option delete 'wpcc_terms_and_conditions_url'
wp option delete 'wpcc_terms_and_conditions_url_text'
wp option delete 'wpcc_user_agreements_text'
wp option delete 'wpcc_enable_zapier'
wp option delete 'wpcc_zapier_webhook'
wp option delete 'wpcc_hide_credits'
wp option delete 'wpcc_pro_version_announcement'
wp option delete 'wpcc_pro_version_advertisement'

# Delete Transients
wp transient delete 'wp_calorie_calculator_activation_notice'
wp transient delete 'wpcc_pro_deactivate'

