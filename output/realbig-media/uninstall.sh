#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'token_value_input'
wp option delete 'token_value_send'
wp option delete 'rb_cacheClearAllow'
wp option delete 'rb_ampSettings'
wp option delete 'realbig_status_gatherer_version'
wp option delete 'realbig_status_gatherer'
wp option delete 'rb_TurboRssOptions'
wp option delete 'rfwp_selectiveOffField'
wp option delete 'rfwp_selectiveOffFieldRestore'
wp option delete 'wpseo_titles'
wp option delete 'rb_testMode'
wp option delete 'reboot_options'
wp option delete 'realbigForWP_version'

# Delete Transients
wp transient delete 'gatherContentContainerLong'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_related-%' OR option_name LIKE '_site_transient_related-%'"

# Clear Cron Jobs
wp cron event delete 'rb_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ytremove_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ytremove_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ytremove_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ytremove_meta_value'"
