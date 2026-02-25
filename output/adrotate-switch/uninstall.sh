#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adinj_options'
wp option delete 'plugin_advman_ads'
wp option delete 'bannerman'
wp option delete 'administer_post_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_adsense_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akp_html5_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'administer_positions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'administer_positions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'administer_positions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'administer_positions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'administer_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'administer_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'administer_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'administer_content'"
