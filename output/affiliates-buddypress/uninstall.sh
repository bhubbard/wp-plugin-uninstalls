#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'affiliates-buddypress-page'
wp option delete 'affiliates-buddypress-page-position'
wp option delete 'affiliates-buddypress-all-pages'

