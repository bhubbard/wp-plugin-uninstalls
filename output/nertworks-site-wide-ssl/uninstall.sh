#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nertworks_site_wide_ssl_redirect_type'
wp option delete 'nertworks_site_wide_ssl_dashboard_option'
wp option delete 'nertworks_site_wide_ssl_website_option'
wp option delete 'nertworks_sidewidessl_plugin_do_activation_redirect_popup'
wp option delete 'nertworks_site_wide_ssl_dashboard_enabled'
wp option delete 'nertworks_site_wide_ssl_website_enabled'

