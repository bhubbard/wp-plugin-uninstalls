#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appointmentsw_changes'
wp option delete 'appointmentsw'
wp option delete 'asw-guest'
wp option delete 'asw-duration'
wp option delete 'asw-numdays'
wp option delete 'asw-maxoffset'
wp option delete 'asw-start_time_0'
wp option delete 'asw-end_time_0'
wp option delete 'asw-start_time_1'
wp option delete 'asw-end_time_1'
wp option delete 'appointmentsw-subject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thechamp_large_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thechamp_large_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thechamp_large_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thechamp_large_avatar'"
