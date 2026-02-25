#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gr_noposts'
wp option delete 'gr_rstitle'
wp option delete 'gr_rptitle'
wp option delete 'gr_showrs'

