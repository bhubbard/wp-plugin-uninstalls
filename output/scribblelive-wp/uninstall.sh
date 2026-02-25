#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrbbl-apikey'
wp option delete 'scrbbl-nofollow'
wp option delete 'scrbbl-nofollow-regex'
wp option delete 'scrbbl-order'

