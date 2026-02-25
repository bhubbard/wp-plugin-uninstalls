#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adactive'
wp option delete 'adaccountid'
wp option delete 'adsiteid'
wp option delete 'adtype'
wp option delete 'adfreq'

