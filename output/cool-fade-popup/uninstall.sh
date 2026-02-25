#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'PopUpFad_Group'
wp option delete 'PopUpFad_Random'
wp option delete 'PopUpFad_Title'
wp option delete 'PopUpFad_On_Homepage'
wp option delete 'PopUpFad_On_Posts'
wp option delete 'PopUpFad_On_Pages'
wp option delete 'PopUpFad_On_Archives'
wp option delete 'PopUpFad_On_Search'
wp option delete 'PopUpFad_Session'
wp option delete 'PopUpFad_nopopup'

