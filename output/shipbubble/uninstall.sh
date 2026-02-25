#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipbubble_options'
wp option delete 'shipbubble_db_update_time'
wp option delete 'shipbubble_first_time_redirection'

