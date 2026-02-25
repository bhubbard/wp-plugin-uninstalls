#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'haxtheweb_location'
wp option delete 'haxtheweb_location_other'
wp option delete 'haxtheweb_blox'
wp option delete 'haxtheweb_stax'
wp option delete 'haxtheweb_pk'
wp option delete 'haxtheweb_autoload_element_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key'"
wp option delete 'haxtheweb_local_build_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_file_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_file_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_file_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_file_upload'"
