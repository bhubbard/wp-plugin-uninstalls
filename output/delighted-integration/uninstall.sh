#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_db_version'
wp option delete 'delighted_api_key'
wp option delete 'survey_time_period'
wp option delete 'survey_first_time_customer'
wp option delete 'survey_backfill_customer'

