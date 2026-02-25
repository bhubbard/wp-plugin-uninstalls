#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_profile_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nav_display'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sc_register_btn_class'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_promo_code_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_profile_pic_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nav_register_btn_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_register_popup_lang'"
wp option delete 'mdh-promo_profile_pic_link'
wp option delete 'mdh-promo_profile_link'
wp option delete 'mdh-promo_nav_display'
wp option delete 'mdh-promo_register_popup_lang'
wp option delete 'mdh-promo_promo_code_type'
wp option delete 'mdh-promo_code'
wp option delete 'mdh-promo_nav_register_btn_txt'
wp option delete 'mdh-promo-sc-register-btn'

