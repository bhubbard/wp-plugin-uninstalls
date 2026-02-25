#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwal_page'
wp option delete 'rwal_redirect'
wp option delete 'rwal_admin'
wp option delete 'rwal_page_input'
wp option delete 'rwal_redirect_field'

