#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mideal_faq_setting_email'
wp option delete 'mideal_faq_setting_email2'
wp option delete 'mideal_faq_setting_avatar_smallsize'
wp option delete 'mideal_faq_setting_dont_show_label'
wp option delete 'mideal_faq_setting_dont_connect_bootstrap'
wp option delete 'mideal_faq_setting_recaptcha'
wp option delete 'mideal_faq_setting_recaptcha_key'
wp option delete 'mideal_faq_setting_recaptcha_key_secret'
wp option delete 'mideal_faq_setting_answer_name'
wp option delete 'mideal_faq_setting_pagination_number'
wp option delete 'mideal_faq_setting_answer_image'
wp option delete 'mideal_faq_setting_question_background'
wp option delete 'mideal_faq_setting_question_color_text'
wp option delete 'mideal_faq_setting_answer_background'
wp option delete 'mideal_faq_setting_answer_color_text'
wp option delete 'mideal_faq_setting_button_color_text'
wp option delete 'mideal_faq_setting_button_background'
wp option delete 'mideal_faq_setting_button_big_size'
wp option delete 'mideal_faq_setting_pagination_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mideal_faq_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mideal_faq_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mideal_faq_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mideal_faq_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mideal_faq_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mideal_faq_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mideal_faq_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mideal_faq_email'"
