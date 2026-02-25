#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ftsn_token'
wp option delete 'ftsn_id'
wp option delete 'ftsn_email'
wp option delete 'ftsn_connected'

