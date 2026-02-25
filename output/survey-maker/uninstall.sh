#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ays_survey_maker_upgrade_plugin'
wp option delete 'ays_quiz_integrations'
wp option delete 'ays_survey_db_version'

