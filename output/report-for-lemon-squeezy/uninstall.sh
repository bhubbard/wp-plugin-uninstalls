#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repofole_apikey'
wp option delete 'repofole_access_allowed'
wp option delete 'repofole_dwnitem'
wp option delete 'repofole_donumber'

