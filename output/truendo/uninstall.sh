#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'truendo_enabled'
wp option delete 'truendo_site_id'
wp option delete 'truendo_language'
wp option delete 'tru_stat_truendo_header_scripts_json'
wp option delete 'tru_mark_truendo_header_scripts_json'
wp option delete 'truendo_google_consent_enabled'
wp option delete 'truendo_google_consent_default_states'
wp option delete 'truendo_google_consent_wait_time'
wp option delete 'truendo_wp_consent_enabled'
wp option delete 'truendo_wp_consent_default_states'
wp option delete 'truendo_trusettings_nofont'
wp option delete 'truendo_trusettings_transparency'
wp option delete 'truendo_trusettings_accessibility'
wp option delete 'truendo_trusettings_accessibility_border_color'
wp option delete 'truendo_trusettings_lang'
wp option delete 'truendo_trusettings_popup_delay'
wp option delete 'truendo_trusettings_autoblocking_disabled'

