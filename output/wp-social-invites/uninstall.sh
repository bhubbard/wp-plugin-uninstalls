#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdb_display_type'
wp option delete 'mdb_facebookappid'
wp option delete 'mdb_link'
wp option delete 'mdb_redirect_url'
wp option delete 'mdb_recipients'

