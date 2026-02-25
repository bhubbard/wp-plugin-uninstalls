#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lean_csns_settings'
wp option delete 'lean_csns_db_version'
wp option delete 'lean_csns_first_install'

