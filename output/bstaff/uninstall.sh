#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bstaff_is_director'
wp option delete 'bstaff_image_display'
wp option delete 'bstaff_column_options'
wp option delete 'bstaff_button_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_department'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_department'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_department'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_department'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_emailSubject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_emailSubject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_emailSubject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_emailSubject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bstaff_emailbuttonText'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bstaff_emailbuttonText'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bstaff_emailbuttonText'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bstaff_emailbuttonText'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
