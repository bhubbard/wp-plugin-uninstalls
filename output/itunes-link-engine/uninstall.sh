#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genius_ile_domain'
wp option delete 'genius_ile_tsid'
wp option delete 'genius_ile_api_key'
wp option delete 'genius_ile_api_secret'
wp option delete 'genius_ile_api_remind'
wp option delete 'genius_ile_db_version'
wp option delete 'genius_ile_liking'
wp option delete 'genius_ile_dismiss_feedback'
wp option delete 'genius_ile_install_date'
wp option delete 'genius_ile_urls_on_click'
wp option delete 'georiot_tsid'
wp option delete 'georiot_api_key'
wp option delete 'georiot_api_secret'
wp option delete 'georiot_api_remind'
wp option delete 'georiot_preserve_tracking'

