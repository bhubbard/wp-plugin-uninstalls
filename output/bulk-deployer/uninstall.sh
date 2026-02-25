#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpd_settings'
wp option delete 'bulkde_settings'
wp option delete 'bpd_db_version'
wp option delete 'bulkde_db_version'

