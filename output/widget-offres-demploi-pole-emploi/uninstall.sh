#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pe_params'
wp option delete 'pe_clientid'
wp option delete 'pe_clientsecret'

