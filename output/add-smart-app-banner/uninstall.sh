#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sab_appleid'
wp option delete 'sab_playid'
wp option delete 'sab_msid'
wp option delete 'sab_msname'
wp option delete 'sab_dayshidden'
wp option delete 'sab_daysreminder'
wp option delete 'sab_title'
wp option delete 'sab_author'
wp option delete 'sab_button'
wp option delete 'sab_iosprice'
wp option delete 'sab_playprice'
wp option delete 'sab_msprice'
wp option delete 'sab_image'
wp option delete 'sab_daysreminder  '

