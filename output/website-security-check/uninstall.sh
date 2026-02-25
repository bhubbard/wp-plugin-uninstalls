#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'wsc_securitycheck'
wp option delete 'wsc_securitycheck_time'
wp option delete 'wsc_securitycheck_ignore'

# Delete Transients
wp transient delete 'wsc_activate'
wp transient delete 'wsc_restore'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

