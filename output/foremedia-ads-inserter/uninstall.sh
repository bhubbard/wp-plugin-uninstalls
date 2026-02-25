#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fmai_token'
wp option delete 'fmai_settings_updated'
wp option delete 'fmai_show_ads_txt_updated_notice'
wp option delete 'fmai_ads_txt'
wp option delete 'fmai_exiting_ads_txt'
wp option delete 'fmai_analytics_enabled'
wp option delete 'fmai_analytics_code'
wp option delete 'fmai_push_enabled'

