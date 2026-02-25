#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'golfScoresUser'
wp option delete 'golfScoresShowNet'
wp option delete 'golfScoresShowTee'
wp option delete 'golfScoresShowHoles'
wp option delete 'golfScoresWidgetList'
wp option delete 'golfScoresPageList'
wp option delete 'golfScores'
wp option delete 'golfScoresSubtitle'
wp option delete 'trackPlayer'
wp option delete 'golfScoresAdminList'
wp option delete 'golfScoresShowName'
wp option delete 'golfScores_database_version'

