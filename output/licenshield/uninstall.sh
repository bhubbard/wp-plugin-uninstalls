#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'licenshield_stripe_mode'
wp option delete 'licenshield_stripe_test_public'
wp option delete 'licenshield_stripe_test_secret'
wp option delete 'licenshield_stripe_live_public'
wp option delete 'licenshield_stripe_live_secret'
wp option delete 'licenshield_stripe_webhook_secret'
wp option delete 'licenshield_company_name'
wp option delete 'licenshield_support_email'
wp option delete 'licenshield_admin_notification_email'
wp option delete 'licenshield_delete_data_on_uninstall'
wp option delete 'licenshield_license_prefix'
wp option delete 'licenshield_success_redirect'
wp option delete 'licenshield_cancel_redirect'
wp option delete 'licenshield_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_public'"
wp option delete 'licenshield_seen_tours'
wp option delete 'licenshield_wizard_complete'
wp option delete 'licenshield_wizard_welcome_seen'
wp option delete 'licenshield_wizard_sdk_confirmed'

# Delete Transients
wp transient delete 'licenshield_activation_redirect'

