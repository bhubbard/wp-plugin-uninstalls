#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hwit_stddt_enable_debug'
wp option delete 'hwit_stddt_enable_email_repeat'
wp option delete 'hwit_stddt_tracking_email_type'
wp option delete 'hw_stddt_include_tracking_info_with_ddt'

# Delete Transients
wp transient delete 'hwit_stddt_notice_ddt_missing'
wp transient delete 'hwit_stddt_notice_mail_sent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_corriere'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_corriere'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_corriere'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_corriere'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codice_tracciamento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codice_tracciamento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codice_tracciamento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codice_tracciamento'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_link_tracciamento'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_link_tracciamento'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_link_tracciamento'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_link_tracciamento'"
