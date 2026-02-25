#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dizetc_defcon_enable_post'
wp option delete 'dizetc_defcon_enable_page'
wp option delete 'dizetc_defcon_content_post'
wp option delete 'dizetc_defcon_content_page'

