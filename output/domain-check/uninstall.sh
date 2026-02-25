#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ftue'"
wp option delete 'domain_check_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_primary_email'"
wp option delete 'site_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email_additional_emails'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%domain_extension_favorites'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%coupons_primary_site'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%coupons_updated'"

# Clear Cron Jobs
wp cron event delete 'domain_check_cron_watch'
wp cron event delete 'domain_check_cron_coupons'
wp cron event delete 'domain_check_cron_email'

