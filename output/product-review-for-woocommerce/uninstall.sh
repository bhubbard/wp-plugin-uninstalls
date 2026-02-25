#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_review_order_status'
wp option delete 'pisol_review_reminder_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed'"
wp option delete 'pisol_review_from_date'
wp option delete 'pisol_review_to_date'
wp option delete 'pisol_review_enable_past_order_reminder'
wp option delete 'pisol_review_reminder_rate'
wp option delete 'pisol_review_flush_endpoint'
wp option delete 'pisol_review_reminder_email_from_address'
wp option delete 'pisol_review_reminder_email_from'
wp option delete 'pisol_review_reminder_email_reply_address'
wp option delete 'pisol_review_unsubscribe'
wp option delete 'pisol_review_unsubscribe_link_text'
wp option delete 'pisol_review_reminder_email_subject'
wp option delete 'pisol_review_reminder_email_heading'
wp option delete 'pisol_review_reminder_email_body'
wp option delete 'pisol_review_reminder_email_unsubscribe_text'
wp option delete 'pisol_review_manual_reminder'
wp option delete 'pisol_review_automatic_reminder'
wp option delete 'pisol_review_reminder_email_footer'
wp option delete 'pi_review_activation_redirect'
wp option delete 'pisol_review_show_order_review_section'
wp option delete 'pisol_review_end_point'
wp option delete 'pisol_review_end_point_text'
wp option delete 'pisol_review_template'
wp option delete 'pisol_review_display_verified_tag'
wp option delete 'pisol_review_display_form'
wp option delete 'pisol_review_show_review_tab'
wp option delete 'pisol_review_reminder_permission'
wp option delete 'pisol_review_load_more'
wp option delete 'pisol_review_moderation'
wp option delete 'pisol_review_form_title'
wp option delete 'pisol_review_form_description'
wp option delete 'pisol_review_form_submit'
wp option delete 'pisol_review_form_review_placeholder'
wp option delete 'pisol_review_form_success_msg'
wp option delete 'pisol_review_form_rating_error'
wp option delete 'pisol_review_form_review_error'
wp option delete 'pisol_review_required'
wp option delete 'pisol_review_default_rating'
wp option delete 'pisol_review_form_logo'
wp option delete 'pisol_review_logo_alignment'
wp option delete 'pisol_review_min_char_length'
wp option delete 'pisol_review_max_char_length'
wp option delete 'pisol_review_loaded_review'
wp option delete 'pisol_review_reminder_permission_required'
wp option delete 'pisol_review_permission_text'

# Clear Cron Jobs
wp cron event delete 'pisol_review_send_auto_reminder'
wp cron event delete 'pisol_review_send_past_order_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_parameters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_parameters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_parameters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_parameters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
