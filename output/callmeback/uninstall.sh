#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmb_clientid'
wp option delete 'cmb_clientsecret'
wp option delete 'cmb_calendarid'
wp option delete 'cmb_tytext'
wp option delete 'access_token'

