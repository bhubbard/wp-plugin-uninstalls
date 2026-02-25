#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mml_leadform_option_apikey'
wp option delete 'mml_leadform_option_hasapi'
wp option delete 'mml_leadform_option_formtitle'
wp option delete 'mml_leadform_option_privacy'
wp option delete 'mml_leadform_option_buttoncolor'
wp option delete 'mml_leadform_option_formbg'
wp option delete 'mml_leadform_option_formbgcolor'
wp option delete 'mml_leadform_option_selectlang'
wp option delete 'mml_leadform_option_googlekey'
wp option delete 'mml_leadform_option_selecttheme'
wp option delete 'mml_leadform_option_titlealignment'
wp option delete 'mml_leadform_option_buttontext'
wp option delete 'mml_leadform_option_thankyou'
wp option delete 'mml_leadform_option_trackform'
wp option delete 'mml_leadform_option_devadminbox'
wp option delete 'mml_detectiondb_version'

