#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kdbm_pbfl_settings'
wp option delete 'kdbm_pbfl_admin_email'
wp option delete 'kdbm_pbfl_unlock_email'

