#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RCKDisableEndpoint'
wp option delete 'RCKAccLevel'
wp option delete 'RCKCreditLink'

