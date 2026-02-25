#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seopress_google_analytics_option_name'
wp option delete 'seopress_pro_license_key'
wp option delete 'seopress_pro_license_status'
wp option delete 'mainwp_seopress_current_site_settings'
wp option delete 'seopress_pro_option_name'
wp option delete 'seopress_toggle'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seopress_mainwp_external_tax%'"
wp option delete 'seopress_mainwp_external_load_set'
wp option delete 'mainwp_seopress_dashboard'

