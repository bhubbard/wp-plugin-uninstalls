#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'HPWAAddrLookup_GeneralSettings'
wp option delete 'HPWAAddrLookup_Woo'
wp option delete 'HPWAAddrLookup_Forms'

