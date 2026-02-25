#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hashform_first_activation'
wp option delete 'hashform_dismissed_notices'
wp option delete '_hashform_security_salt'
wp option delete 'hashform_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hashform_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hashform_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hashform_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hashform_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_hashform-entriescolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_hashform-entriescolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_hashform-entriescolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_hashform-entriescolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hashform_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hashform_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hashform_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hashform_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_hashformcolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_hashformcolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_hashformcolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_hashformcolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
