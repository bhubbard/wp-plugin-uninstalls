#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpffm_plugin_do_activation_redirect'
wp option delete 'dpffm_handle'
wp option delete 'dpffm_subtitle'
wp option delete 'dpffm_hideimage'
wp option delete 'dpffm_view'
wp option delete 'dpffm_gridview'
wp option delete 'dpffm_titletag'
wp option delete 'dpffm_readmore'
wp option delete 'dpffm_numposts'
wp option delete 'upload_image'
wp option delete 'dpffm_dateformat'

