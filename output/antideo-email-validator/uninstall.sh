#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adev_token'
wp option delete 'adev_token_expired_message'
wp option delete 'adev_whitelist'
wp option delete 'adev_blacklist'
wp option delete 'adev_domain_whitelist'
wp option delete 'adev_domain_blacklist'
wp option delete 'adev_allow_free_email'
wp option delete 'adev_allow_role_business_email'
wp option delete 'adev_allow_disposable_email'
wp option delete 'adev_attempts'
wp option delete 'adev_ignored_uris'

