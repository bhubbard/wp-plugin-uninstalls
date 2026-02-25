#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete '_bp_retain_bp_default'
wp option delete 'template_root'
wp option delete 'stylesheet_root'

# Delete Transients
wp transient delete 'bp_classic_show_notice'
wp transient delete 'theme_roots'

