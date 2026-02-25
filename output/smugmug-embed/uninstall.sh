#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SME_Settings'
wp option delete 'SME_smugmugembed_api'
wp option delete 'SME_api_progress'
wp option delete 'SME_api_token'
wp option delete 'SME_SelectedAlbums'
wp option delete 'PS_PhotoSession_options_Types'
wp option delete 'PS_PhotoSession_options_Start_Time'
wp option delete 'PS_PhotoSession_options_Time_Increments-select'
wp option delete 'PS_PhotoSession_options_End_Time'
wp option delete 'PS_PhotoSession_options_ShowTakenSessions'
wp option delete 'PS_PhotoSession_options_Header_Style'
wp option delete 'PS_PhotoSession_options_Link_Style'
wp option delete 'PS_PhotoSession_options_Success_Text'
wp option delete 'SME_SmugMugEmbed_options_AvailableSizes'
wp option delete 'SME_SmugMugEmbed_options_DefaultSize'
wp option delete 'SME_SmugMugEmbed_options_DefaultAlign'
wp option delete 'SME_SmugMugEmbed_options_AvailableClickResponse'
wp option delete 'SME_SmugMugEmbed_options_DefaultClickResponse'
wp option delete 'SME_SmugMugEmbed_options_DefaultKeywords'
wp option delete 'SME_SmugMugEmbed_options_DefaultCaption'
wp option delete 'SME_SmugMugEmbed_options_DefaultImageName'
wp option delete 'SME_SmugMugEmbed_options_DefaultOpenNewWindow'
wp option delete 'SME_SmugMugEmbed_options_Galleries
'
wp option delete 'SME_License'

# Delete Transients
wp transient delete 'sme_license_reminder'
wp transient delete 'sme_license_expiration'

