#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dplr_settings'
wp option delete 'dplr_2_0_updated'
wp option delete 'dplr_hub_script'
wp option delete 'dplr_tracking_enabled'
wp option delete 'dplr_wc_consent'
wp option delete 'dplr_wc_consent_location'
wp option delete 'dplr_wc_consent_text'
wp option delete 'dplr_wc_open_graph_meta'
wp option delete 'dplrwoo_api_connected'
wp option delete 'dplr_subscribers_list'
wp option delete 'dplr_learnpress_subscribers_list'
wp option delete 'dplrwoo_last_synch'
wp option delete 'dplr_version'
wp option delete 'sidebars_widgets'
wp option delete 'widget_dplr_subscription_widget'
wp option delete 'widget_dplr_form_widget'

