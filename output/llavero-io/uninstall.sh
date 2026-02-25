#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cill_apiurl'
wp option delete 'cill_apikey'
wp option delete 'cill_appid'

