#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fhw_dsgvo_cookie_position'
wp option delete 'fhw_dsgvo_cookie_abstand'
wp option delete 'fhw_dsgvo_cookie_bgcolor'
wp option delete 'fhw_dsgvo_cookie_textcolor'
wp option delete 'fhw_dsgvo_cookie_text'
wp option delete 'fhw_dsgvo_cookie_buttonbgcolor'
wp option delete 'fhw_dsgvo_cookie_buttontextcolor'
wp option delete 'fhw_dsgvo_cookie_buttontext'
wp option delete 'fhw_dsgvo_cookie_datenschutzerklaerung'
wp option delete 'fhw_dsgvo_cookie_datenschutzseite'
wp option delete 'fhw_dsgvo_cookie_datenschutztext'
wp option delete 'fhw_dsgvo_cookie_datenschutzdesign'
wp option delete 'fhw_dsgvo_cookie_datenschutztextfarbe'
wp option delete 'fhw_dsgvo_cookie_ppbuttonbg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fhw_dsgvo_cookie_pp_%'"

