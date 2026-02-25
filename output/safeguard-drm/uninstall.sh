#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsgdrm_av_apikeydrm'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpsgdrm_%'"
wp option delete 'wpsgdrm_fm_firstname'
wp option delete 'wpsgdrm_fm_lastname'
wp option delete 'wpsgdrm_fm_email'
wp option delete 'wpsgdrm_fm_company'
wp option delete 'wpsgdrm_fm_domain'
wp option delete 'wpsgdrm_av_allowwindows'
wp option delete 'wpsgdrm_av_allowmac'
wp option delete 'wpsgdrm_av_allowandroid'
wp option delete 'wpsgdrm_av_allowios'
wp option delete 'wpsgdrm_av_allowremote'
wp option delete 'wpsgdrm_av_Version_windows'
wp option delete 'wpsgdrm_av_Version_mac'
wp option delete 'wpsgdrm_av_Version_android'
wp option delete 'wpsgdrm_av_Version_ios'
wp option delete 'wpsgdrm_settings'

