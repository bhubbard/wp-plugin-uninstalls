#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'glimbyte_ssl_%'"
wp option delete 'glimbyte_ssl_https_enabled'
wp option delete 'glimbyte_ssl_redirect_type'
wp option delete 'glimbyte_ssl_force_all'
wp option delete 'glimbyte_ssl_excluded_urls'
wp option delete 'glimbyte_ssl_mixed_content_fix_enabled'
wp option delete 'glimbyte_ssl_mixed_content_method'
wp option delete 'glimbyte_ssl_cert_alert_enabled'
wp option delete 'glimbyte_ssl_cert_alert_days'
wp option delete 'glimbyte_ssl_cert_alert_email'
wp option delete 'glimbyte_ssl_hsts_enabled'
wp option delete 'glimbyte_ssl_hsts_max_age'
wp option delete 'glimbyte_ssl_hsts_subdomains'
wp option delete 'glimbyte_ssl_hsts_preload'
wp option delete 'glimbyte_ssl_debug_mode'
wp option delete 'glimbyte_ssl_logs'
wp option delete 'glimbyte_ssl_network_force_https'
wp option delete 'glimbyte_ssl_allow_site_override'

# Delete Transients
wp transient delete 'glimbyte_ssl_scan_results'
wp transient delete 'glimbyte_ssl_admin_notice'

# Clear Cron Jobs
wp cron event delete 'glimbyte_ssl_check_certificate'

