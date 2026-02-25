#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'txtClientNumber'
wp option delete 'txtDispatchDate'
wp option delete 'txtWeightInGrams'
wp option delete 'txtWidthInCentimeters'
wp option delete 'txtLengthInCentimeters'
wp option delete 'txtHeightInCentimeters'
wp option delete 'txtNoteOne'
wp option delete 'txtNoteTwo'
wp option delete 'txtRecipientCharge'
wp option delete 'txtVolumesNumber'
wp option delete 'txtCountry'
wp option delete 'txtZipCode'
wp option delete 'txtAddress'
wp option delete 'txtCity'
wp option delete 'txtState'
wp option delete 'txtContactName'
wp option delete 'txtPhone'
wp option delete 'txtEmail'
wp option delete 'txtAdditionalServices'
wp option delete 'txtStartDate'
wp option delete 'txtEndDate'
wp option delete 'ddlStatus'
wp option delete 'txtApiKey'
wp option delete 'plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
