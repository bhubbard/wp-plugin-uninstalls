#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genius_ale_domain'
wp option delete 'genius_ale_tsid'
wp option delete 'genius_ale_api_key'
wp option delete 'genius_ale_api_secret'
wp option delete 'genius_ale_api_remind'
wp option delete 'genius_ale_preserve_tracking'
wp option delete 'genius_ale_urls_on_click'
wp option delete 'genius_ale_db_version'
wp option delete 'genius_ale_liking'
wp option delete 'genius_ale_dismiss_feedback'
wp option delete 'genius_ale_install_date'
wp option delete 'Test Option'
wp option delete 'georiot_tsid'
wp option delete 'georiot_api_key'
wp option delete 'georiot_api_secret'
wp option delete 'georiot_api_remind'
wp option delete 'georiot_preserve_tracking'

