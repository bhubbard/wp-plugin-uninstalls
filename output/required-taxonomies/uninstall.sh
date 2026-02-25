#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vg_required_taxonomies_post_types'
wp option delete 'vg_required_taxonomies_taxonomies'
wp option delete 'vg_required_taxonomies_error_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vg_required_taxonomies_%'"

