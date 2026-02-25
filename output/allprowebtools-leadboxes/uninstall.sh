#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'APWTAPIKEY'
wp option delete 'APWTAPIAUTH'
wp option delete 'APWT_THIS_VERSION'

