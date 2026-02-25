#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdm_privacy_notice_dismissed'
wp option delete 'wdm_pefree_show_popup_on_next_load'
wp option delete 'wdm_pefree_activation_time'
wp option delete 'wdm_pefree_activation_banner_dismissed'
wp option delete 'wdm_form_data'

# Delete Transients
wp transient delete 'wdm_pefree_show_activation_banner'

