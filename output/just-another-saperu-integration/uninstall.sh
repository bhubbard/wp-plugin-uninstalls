#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sape_user'
wp option delete 'sape_part_is_client'
wp option delete 'sape_part_is_context'
wp option delete 'sape_part_is_articles'
wp option delete 'sape_login'
wp option delete 'sape_password'
wp option delete 'sape_widget_class'

# Delete Transients
wp transient delete 'sape.get_sites_EXT'

