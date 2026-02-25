#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'holostepDoActivationRedirect'
wp option delete 'accountId'
wp option delete 'holostep_accountId'

