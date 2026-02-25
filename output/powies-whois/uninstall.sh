#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display-on-free'
wp option delete 'display-on-connect'
wp option delete 'display-on-invalid'
wp option delete 'show-www'
wp option delete 'show-whois-output'
wp option delete 'before-whois-output'
wp option delete 'after-whois-output'

