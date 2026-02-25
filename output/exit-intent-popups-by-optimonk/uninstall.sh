#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optiMonkDoActivationRedirect'
wp option delete 'accountId'
wp option delete 'optiMonk_accountId'

