#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustarc_version'
wp option delete 'trustarc_script'
wp option delete 'trustarc_script_params'
wp option delete 'trustarc_banner'
wp option delete 'trustarc_preferences_selector'
wp option delete 'trustarc_preferences'
wp option delete 'trustarc_standard_event_listener'
wp option delete 'trustarc_google_consent_mode'
wp option delete 'trustarc_implied_location'
wp option delete 'trustarc_consent_config'
wp option delete 'trustarc_wp_consent_api'
wp option delete 'trustarc_wp_consent_api_mapping'
wp option delete 'trustarc_ga_measurement_id'
wp option delete 'trustarc_google_consent_fields'
wp option delete 'trustarc_ads_data_redaction'
wp option delete 'trustarc_url_passthrough'

