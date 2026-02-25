#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kdmdks_guilty_details'
wp option delete 'kdmdks_guilty'
wp option delete 'kdmdks_logs'
wp option delete 'kdmdks_settings'
wp option delete 'kdmdks_innocent'

