#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ofp_nb_posts_frontpage'
wp option delete 'ofp_nb_posts_lead'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ofp_post_frontpage_%'"

