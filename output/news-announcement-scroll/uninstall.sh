#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gNewsAnnouncementtype'
wp option delete 'gNewsAnnouncementorder'
wp option delete 'gNewsAnnouncementfont'
wp option delete 'gNewsAnnouncementfontsize'
wp option delete 'gNewsAnnouncementfontweight'
wp option delete 'gNewsAnnouncementfontcolor'
wp option delete 'gNewsAnnouncementwidth'
wp option delete 'gNewsAnnouncementheight'
wp option delete 'gNewsAnnouncementslidetimeout'
wp option delete 'gNewsAnnouncementslidedirection'
wp option delete 'gNewsAnnouncementtextalign'
wp option delete 'gNewsAnnouncementtextvalign'
wp option delete 'gNewsAnnouncementnoannouncement'
wp option delete 'gNews_pluginversion'
wp option delete 'gNewsAnnouncementtitle'
wp option delete 'gNewsAnnouncementnoannouncement '
wp option delete '_current_nas_db_version'

# Delete Transients
wp transient delete '_nas_activation_redirect'

