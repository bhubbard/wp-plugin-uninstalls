#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HPWAddrLookup_GeneralSettings'
wp option delete 'HPWAddrLookup_Forms'
wp option delete 'HPWAddrLookup_Woo'

