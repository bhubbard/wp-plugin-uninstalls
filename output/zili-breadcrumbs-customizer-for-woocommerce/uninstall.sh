#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_breadcrumbs_customizer_change_defaults_enabled'
wp option delete 'alg_wc_breadcrumbs_customizer_change_home_url_enabled'
wp option delete 'alg_wc_breadcrumbs_customizer_hide'
wp option delete 'alg_wc_breadcrumbs_customizer_defaults'
wp option delete 'alg_wc_breadcrumbs_customizer_home_url'
wp option delete 'alg_wc_breadcrumbs_customizer_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

