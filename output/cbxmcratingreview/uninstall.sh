#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxmcratingreview_emails'
wp option delete 'cbxmcratingreview_version'
wp option delete 'cbxmcratingreview_email_tpl'
wp option delete 'cbxmcratingreview_pages'

# Delete Transients
wp transient delete 'cbxmcratingreview_upgraded_notice'
wp transient delete 'cbxmcratingreview_activated_notice'
wp transient delete 'cbxmcratingreview_proaddon_deactivated'
wp transient delete 'cbxmcratingreview_commentaddon_deactivated'
wp transient delete 'cbxmcratingreview_mycredaddon_deactivated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxmcratingreview_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxmcratingreview_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxmcratingreview_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxmcratingreview_avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxmcratingreview_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxmcratingreview_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxmcratingreview_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxmcratingreview_total'"
