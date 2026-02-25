#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uifmfbuild_version'
wp option delete 'zgfm-b-hide_upgrade_notice'
wp option delete 'zgfm-b-install-type'
wp option delete 'zgfm_fields_fastload'
wp option delete 'zgfm_b_activated'
wp option delete 'zgfm_b_modalmode'
wp option delete 'zigaform_f_notice_1'
wp option delete 'zgfm_wpfb_code'
wp option delete 'zgfm_listform_searchfilter'
wp option delete 'zgfm_listform_trash'
wp option delete 'zgfm_b_hideversion'
wp option delete 'zgfm_listrecords_searchfilter'
wp option delete 'zgfm_frm_main_recexpdelimiter'

# Delete Transients
wp transient delete 'styles_google_fonts'

