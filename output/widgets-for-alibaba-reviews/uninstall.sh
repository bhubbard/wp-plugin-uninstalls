#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'litespeed.conf.optm-localize_domains'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-rate-us'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-download-notification-email'"
wp option delete 'trustindex-wc-notification'
wp option delete 'trustindex-core-shortcode-inited'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ti-online-users-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-widget-setted-up'"

