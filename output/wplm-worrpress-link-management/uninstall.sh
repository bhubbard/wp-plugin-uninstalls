#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplm_is_email_admin_owner'
wp option delete 'wplm_is_email_owner_after_expire'
wp option delete 'wplm_is_email_admin_after_expire'
wp option delete 'wplm_is_delete_after_expire'
wp option delete 'site_url'
wp option delete 'wplm_expired_email_format_admin'
wp option delete 'wplm_expired_email_format_owner'
wp option delete 'wplm_admin_email'
wp option delete 'wplm_days_before'
wp option delete 'wplm_expiring_email_format_admin'
wp option delete 'wplm_expiring_email_format_owner'
wp option delete 'widget_myHelloWorld'
wp option delete 'widget_mymumbleWorld'

