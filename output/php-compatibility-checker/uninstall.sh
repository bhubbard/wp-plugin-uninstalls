#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpephpcompat_is_wptide'
wp option delete 'wpephpcompat.test_version'
wp option delete 'wpephpcompat.only_active'
wp option delete 'wpephpcompat.scan_results'
wp option delete 'wpephpcompat.lock'
wp option delete 'wpephpcompat.status'
wp option delete 'wpephpcompat.numdirs'
wp option delete 'wpephpcompat.show_notice'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wpephpcompat_start_test_cron'

