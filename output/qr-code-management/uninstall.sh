#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwc_qrcm'
wp option delete 'rwcqrcm'
wp option delete 'rwc_qrcm_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwcqrcm_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwcqrcm_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwcqrcm_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwcqrcm_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwcqrcm_qrdata_url_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwcqrcm_qrdata_url_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwcqrcm_qrdata_url_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwcqrcm_qrdata_url_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rwc_qrcm_redirect_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rwc_qrcm_redirect_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rwc_qrcm_redirect_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rwc_qrcm_redirect_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwcqrcm_qrdata_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rwcqrcm_qrsettings_%'"
