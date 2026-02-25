#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BLCScript'
wp option delete 'blcLocation'
wp option delete 'loginId'
wp option delete 'password'

