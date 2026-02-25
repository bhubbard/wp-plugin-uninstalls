#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp transient delete 'content.json'
wp transient delete 'widgets.json'
wp transient delete 'options.json'
wp transient delete 'delayed_posts'
wp transient delete 'imported_term_ids'
wp transient delete 'imported_post_ids'
wp transient delete 'post_orphans'

