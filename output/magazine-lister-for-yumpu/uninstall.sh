#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'token'
wp option delete 'showtitle'
wp option delete 'showdate'
wp option delete 'linktext'
wp option delete 'yumpu_collections'

