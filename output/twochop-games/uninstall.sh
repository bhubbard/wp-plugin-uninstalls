#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twochop_public_wpkey'
wp option delete 'twochop_publicpublisherkey'
wp option delete 'twochop_reserved1key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_updatekey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_updatekey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_updatekey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_updatekey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_idtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_idtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_idtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_idtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_customdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_customdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_customdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_customdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_buttonstyle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_buttonstyle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_buttonstyle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_buttonstyle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_updatedatetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_updatedatetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_updatedatetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_updatedatetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_dataversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_dataversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_dataversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_dataversion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twochop_public_originkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twochop_public_originkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twochop_public_originkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twochop_public_originkey'"
