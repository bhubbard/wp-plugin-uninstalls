#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_calendar_host'
wp option delete 'hp_calendar_manage'
wp option delete 'hp_calendar_language'
wp option delete 'hp_calendar_use_default_style'
wp option delete 'hp_calendar_api_key'
wp option delete 'hp_calendar_callback'
wp option delete 'hp_calendar_success_callback'
wp option delete 'hp_calendar_homepage'
wp option delete 'hp_calendar_logo'
wp option delete 'hp_calendar_company'

