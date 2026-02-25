#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maakapay_admin_mail'
wp option delete 'maakapay_accepting_currencies'
wp option delete 'maakapay_mode'
wp option delete 'maakapay_test'
wp option delete 'maakapay_live'

