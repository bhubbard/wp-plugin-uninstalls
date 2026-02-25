#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpds_deferred_admin_notice'
wp option delete '_wpds_dev_email'
wp option delete '_wpds_hide'
wp option delete '_wpds_message'
wp option delete 'active_sitewide_plugins'

