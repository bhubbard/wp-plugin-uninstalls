#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arc_publication_id'
wp option delete 'arc_api_key'
wp option delete 'redirect_page'

