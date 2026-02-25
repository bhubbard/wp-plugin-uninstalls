#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popupnotifiercf7_option_isAutoClose'
wp option delete 'popupnotifiercf7_option_isConfirmButton'
wp option delete 'popupnotifiercf7_option_isShowIcon'
wp option delete 'popupnotifiercf7_option_customSeconds'
wp option delete 'popupnotifiercf7_option_customTextButton'
wp option delete 'popupnotifiercf7_option_customTextButtonBackground'

