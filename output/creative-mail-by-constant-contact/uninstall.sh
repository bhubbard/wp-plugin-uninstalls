#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ce4wp_activated'
wp option delete 'ce4wp_install_date'
wp option delete 'ce4wp_activation_redirect'
wp option delete 'ce4wp_ignore_review_notice'
wp option delete 'ce4wp_admin_footer_text_rated'
wp option delete 'woocommerce_onboarding_profile'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'password_protected_status'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

