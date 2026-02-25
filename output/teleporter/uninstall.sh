#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off'"

# Delete Transients
wp transient delete 'wordquest_plugin_info'
wp transient delete 'update_plugins'
wp transient delete 'wordquest_guides_feed'
wp transient delete 'wordquest_quest_feed'
wp transient delete 'pluginreview_newest_feed'
wp transient delete 'prn_feed'
wp transient delete 'pluginreview_updated_feed'

