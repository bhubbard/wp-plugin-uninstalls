#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FVDUKDisableEndPoint'
wp option delete 'FVDUKCreditUs'
wp option delete 'fvduk_sandbox_mode'
wp option delete 'FVDUKCreditLink'
wp option delete 'RandomAPIAccLevel1'

