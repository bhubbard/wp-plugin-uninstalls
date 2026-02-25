#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phpcompat_checker_php_version'
wp option delete 'phpcompat_checker_report_mode'
wp option delete 'phpcompat_checker_batch_size'
wp option delete 'phpcompat_checker_skip_vendor'
wp option delete 'phpcompat_checker_stop_scan'

