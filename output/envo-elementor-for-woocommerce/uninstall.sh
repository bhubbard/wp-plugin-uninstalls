#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etww_do_activation_redirect'
wp option delete 'etww_active_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Delete Transients
wp transient delete 'etww_template_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etww_pro_promo_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etww_pro_promo_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etww_pro_promo_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etww_pro_promo_message'"
