#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CrazyRocketPageFilterMode'
wp option delete 'CrazyRocketPageFilterList'
wp option delete 'CrazyRocketApplicationID'
wp option delete 'CrazyRocketHideInDashboard'
wp option delete 'CrazyRocketHideOnMobile'
wp option delete 'CrazyRocketAPISecretKey'
wp option delete 'CrazyRocketLanguage'

