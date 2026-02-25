#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ec_stars_rating_use_jquery'
wp option delete 'ec_stars_rating_size'
wp option delete 'ec_stars_rating_hover_color'
wp option delete 'ec_stars_rating_default_color'
wp option delete 'ec_stars_rating_active_color'
wp option delete 'ec_stars_rating_show_votes'
wp option delete 'ec_stars_rating_use_microformats'
wp option delete 'ec_stars_rating_enable_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ec_stars_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ec_stars_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ec_stars_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ec_stars_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ec_stars_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ec_stars_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ec_stars_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ec_stars_rating_count'"
