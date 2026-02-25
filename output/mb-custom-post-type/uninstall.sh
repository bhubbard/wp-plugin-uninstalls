#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'add_term_order_column'

