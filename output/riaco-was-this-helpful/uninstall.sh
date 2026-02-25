#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riwth_show_admin_bar_content'
wp option delete 'riwth_feedback_box_thanks_text'
wp option delete 'riwth_load_scripts'
wp option delete 'riwth_load_styles'
wp option delete 'riwth_feedback_box_color_background'
wp option delete 'riwth_feedback_box_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text'"
wp option delete 'riwth_feedback_box_border_button_rounded'
wp option delete 'riwth_display_on'
wp option delete 'riwth_display_by_user_role'
wp option delete 'riwth_feedback_box_positive_button_icon'
wp option delete 'riwth_feedback_box_negative_button_icon'
wp option delete 'riwth_feedback_box_color_positive_button'
wp option delete 'riwth_feedback_box_color_positive_text'
wp option delete 'riwth_feedback_box_color_negative_button'
wp option delete 'riwth_feedback_box_color_negative_text'
wp option delete 'riwth_review_notice_done'
wp option delete 'riwth_feedback_box_submitting_text'
wp option delete 'riwth_uninstall_remove_data'
wp option delete 'riwth_feedback_box_template'
wp option delete 'riwth_feedback_box_positive_button_text'
wp option delete 'riwth_feedback_box_negative_button_text'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_riwth_total_feedback_%' OR option_name LIKE '_site_transient_riwth_total_feedback_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_riwth_positive_feedback_%' OR option_name LIKE '_site_transient_riwth_positive_feedback_%'"
wp transient delete 'riwth_feedback_box'
wp transient delete 'riwth_review_notice_maybe_later'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_riwth_reset_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_riwth_reset_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_riwth_reset_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_riwth_reset_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_riwth_disable_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_riwth_disable_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_riwth_disable_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_riwth_disable_box'"
