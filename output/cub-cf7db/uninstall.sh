#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cubcf7db_view_install_date'
wp option delete 'cubcf7db_options'

# Delete Transients
wp transient delete 'cubcf7db_blog_ids_transient'

