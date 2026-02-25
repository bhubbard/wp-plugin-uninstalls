#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noparam_api_key'
wp option delete 'noparam_cf7_enabled'
wp option delete 'noparam_wpforms_enabled'
wp option delete 'noparam_registration_enabled'
wp option delete 'noparam_comments_enabled'
wp option delete 'noparam_invalid_email_message'
wp option delete 'noparam_disposable_email_message'
wp option delete 'noparam_role_email_message'
wp option delete 'noparam_suggestion_message'
wp option delete 'noparam_disposable_message'
wp option delete 'noparam_role_based_message'
wp option delete 'noparam_requests_left'
wp option delete 'noparam_version'

# Delete Transients
wp transient delete 'noparam_quota_status'

