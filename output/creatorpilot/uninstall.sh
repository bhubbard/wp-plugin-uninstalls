#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Creator_Pilot_Session'
wp option delete 'Creator_Pilot_Job_Id'
wp option delete 'Creator_Pilot_License'
wp option delete 'Creator_Pilot_Error_Message'
wp option delete 'Creator_Pilot_Error_Code'
wp option delete 'Creator_Pilot_Status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
