#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'styble_version'
wp option delete 'styble_first_version'
wp option delete 'styble_activation_date'
wp option delete 'styble_db_version'

