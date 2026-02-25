#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cashbill_id'
wp option delete 'cashbill_secret'
wp option delete 'cashbill_psc_id'
wp option delete 'cashbill_psc_secret'
wp option delete 'cashbill_test'
wp option delete 'cashbill_psc_mode'

