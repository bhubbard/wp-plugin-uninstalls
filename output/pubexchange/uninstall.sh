#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pubexchange_publication_id'
wp option delete 'pubexchange_widget_id'
wp option delete 'pubexchange_widget_number'
wp option delete 'pubexchange_link_discovery'
wp option delete 'pubexchange_lazy_load'

