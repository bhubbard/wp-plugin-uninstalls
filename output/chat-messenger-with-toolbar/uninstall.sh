#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woc_credit'
wp option delete 'woc_sitewide'
wp option delete 'woc_sitewide_turned_off'

