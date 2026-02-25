#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'amp_wp_general_settings'
wp option delete 'amp_wp_ga'
wp option delete 'amp_wp_fbp'
wp option delete 'amp_wp_sa'
wp option delete 'amp_wp_qc'
wp option delete 'amp_wp_acm'
wp option delete 'amp_wp_cb'
wp option delete 'amp_wp_comscore'
wp option delete 'amp_wp_yandex_metrica'
wp option delete 'amp_wp_afs'
wp option delete 'amp_wp_adobe'
wp option delete 'amp_wp_gdpr_settings'
wp option delete 'amp_wp_layout_settings'
wp option delete 'amp_wp_noticebar_settings'
wp option delete 'amp_wp_social_links_settings'
wp option delete 'amp_wp_structured_data_settings'
wp option delete 'amp_wp_third_party_plugins_support_settings'
wp option delete 'amp-wp-translation'
wp option delete 'WpFastestCache'
wp option delete 'wpb_rs/settings/snippets_in_footer'

# Delete Transients
wp transient delete 'amp-wp-flush-rules'
wp transient delete '_amp_wp_page_welcome_redirect'
wp transient delete 'amp_wp_system_status_wp_version_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable-amp-wp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable-amp-wp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable-amp-wp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable-amp-wp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amp_wp_social_share_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amp_wp_social_share_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amp_wp_social_share_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amp_wp_social_share_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_amp_wp_social_share_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_amp_wp_social_share_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_amp_wp_social_share_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amp_wp_social_share_%'"
