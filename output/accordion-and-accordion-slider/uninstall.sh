#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpos_anylc_redirect'
wp option delete 'wpos_anylc_site_uid'

# Delete Transients
wp transient delete 'wp_aas_install_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpos_anylc_optin_notice_%' OR option_name LIKE '_site_transient_wpos_anylc_optin_notice_%'"

# Clear Cron Jobs
wp cron event delete 'wpos_monthly_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%visible_panels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%visible_panels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%visible_panels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%visible_panels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%shadow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%shadow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%shadow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shadow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%orientation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%orientation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%orientation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%orientation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%panel_distance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%panel_distance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%panel_distance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%panel_distance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%max_openedaccordion_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%max_openedaccordion_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%max_openedaccordion_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%max_openedaccordion_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%open_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%open_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%open_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%open_panel_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%mouse_wheel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%mouse_wheel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%mouse_wheel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mouse_wheel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%attachment_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%attachment_link'"
