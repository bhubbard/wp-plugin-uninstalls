#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%EnableRecaptcha'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%RecaptchaSelected'"
wp option delete 'lknFraudDetectionForWoocommerceEnableRecaptcha'
wp option delete 'lknFraudDetectionForWoocommercegoogleRecaptchaV3Key'
wp option delete 'lknFraudDetectionForWoocommerceGoogleRecaptchaV3Score'
wp option delete 'lknFraudDetectionForWoocommerceGoogleRecaptchaV3Secret'
wp option delete 'lknFraudDetectionForWoocommerceDebug'

