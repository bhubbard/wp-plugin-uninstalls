#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redalo_settings'
wp option delete 'redalo_migrated'
wp option delete 'wpral_logout_redirect_url'
wp option delete 'wpral_use_safe_redirect'

