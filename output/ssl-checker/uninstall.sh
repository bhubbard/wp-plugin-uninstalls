#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gritonl_ssl_checker_errors'
wp option delete 'gritonl_ssl_checker_debug'
wp option delete 'gritonl_ssl_checker_emails'
wp option delete 'gritonl_ssl_checker_ssl_expiry_ts'
wp option delete 'gritonl_ssl_checker_ssl_expiry'
wp option delete 'gritonl_ssl_checker_domain_expiry_ts'
wp option delete 'gritonl_ssl_checker_domain_expiry'
wp option delete 'gritonl_ssl_checker_alerts'

# Clear Cron Jobs
wp cron event delete 'gritonl_ssl_checker'

