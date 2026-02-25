#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exclude_pin_it_images'
wp option delete 'excluded_pint_it_pages'
wp option delete 'WL_Enable_Pinit_Post'
wp option delete 'WL_Enable_Pinit_Page'
wp option delete 'WL_Pinit_Btn_On_Hover'
wp option delete 'WL_Mobile_Status'
wp option delete 'WL_Pinit_Btn_Color'
wp option delete 'WL_Pinit_Btn_Design'
wp option delete 'WL_Pinit_Btn_Size'

