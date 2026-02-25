#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'td_al_db_version'
wp option delete 'td_al_access_code'
wp option delete 'td_al_lock_active'
wp option delete 'td_al_divertto'

