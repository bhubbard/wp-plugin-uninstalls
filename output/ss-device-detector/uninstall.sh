#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mobcodes_activate'
wp option delete 'wp_mobcodes_deferred_admin_notices'

