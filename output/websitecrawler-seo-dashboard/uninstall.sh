#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbstcrlrsdb-token'
wp option delete 'wbstcrlrsdb-last-response'
wp option delete 'wbstcrlrsdb-api-key'

