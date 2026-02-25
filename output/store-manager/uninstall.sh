#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sm-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-options'"
wp option delete 'sm-google-options'
wp option delete 'sm-openstreetmap-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm-address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm-address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm-address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm-address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm-openinghours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm-openinghours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm-openinghours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm-openinghours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm-contactinfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm-contactinfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm-contactinfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm-contactinfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm-gallery-ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm-gallery-ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm-gallery-ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm-gallery-ids'"
