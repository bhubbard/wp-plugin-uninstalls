#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SMID_data_Src_Value'
wp option delete 'SMID_excluded_Image_Classes'
wp option delete 'SMID_excluded_Image_ID'
wp option delete 'SMID_excluded_Image_Name'
wp option delete 'SMID_excluded_Image_Extension'

