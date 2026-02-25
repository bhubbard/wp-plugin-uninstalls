#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpel-version'
wp option delete 'wpel-pointers'
wp option delete 'wpel-first-install'
wp option delete 'wpel-external-link-settings'
wp option delete 'wp_external_links-main'
wp option delete 'wp_external_links-seo'
wp option delete 'wp_external_links-style'
wp option delete 'wp_external_links-extra'
wp option delete 'wp_external_links-screen'
wp option delete 'wp_external_links-meta'
wp option delete 'wpel-internal-link-settings'
wp option delete 'wpel-excluded-link-settings'
wp option delete 'wpel-exceptions-settings'
wp option delete 'wpel-admin-settings'
wp option delete 'wpel-network-settings'
wp option delete 'wpel-network-admin-settings'
wp option delete 'wpel-show-notice'
wp option delete 'wpel-notice-dismissed-rate'

