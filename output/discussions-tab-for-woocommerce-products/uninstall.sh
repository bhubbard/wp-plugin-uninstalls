#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_products_discussions_tab_version'
wp option delete 'alg_dtwp_edit_comment_post_id'
wp option delete 'alg_dtwp_edit_comment_parent_id'
wp option delete 'alg_dtwp_edit_comment_user_id'
wp option delete 'alg_dtwp_opt_enable'
wp option delete 'alg_dtwp_admin_conversions_enable'
wp option delete 'alg_dtwp_escape_code_and_pre'
wp option delete 'alg_dtwp_opt_remove_content'
wp option delete 'alg_dtwp_opt_content_to_remove'
wp option delete 'alg_dtwp_opt_ajax_tab'
wp option delete 'alg_dtwp_opt_tinymce'
wp option delete 'alg_dtwp_opt_comment_form_position'
wp option delete 'alg_dtwp_social_enable'
wp option delete 'alg_dtwp_labels_enable'
wp option delete 'alg_dtwp_opt_support_label'
wp option delete 'alg_dtwp_opt_v_owner_restrict'
wp option delete 'alg_dtwp_product_authors_post_discussion_comments'
wp option delete 'alg_dtwp_administrator_post_discussion_comments'
wp option delete 'alg_dtwp_hide_discussion_comments_from_guests'
wp option delete 'alg_dtwp_edit_comments_link_requires_moderate_comments'
wp option delete 'alg_dtwp_opt_custom_sanitization_content'
wp option delete 'alg_dtwp_opt_custom_sanitization'
wp option delete 'alg_dtwp_discussions_respond_title'
wp option delete 'alg_dtwp_discussions_post_comment_label'
wp option delete 'alg_dtwp_discussions_textarea_placeholder'
wp option delete 'alg_dtwp_opt_open_comments'
wp option delete 'alg_dtwp_opt_tab_id'
wp option delete 'alg_dtwp_opt_comment_link'
wp option delete 'alg_dtwp_discussions_label'
wp option delete 'alg_dtwp_discussions_tab_title'
wp option delete 'alg_dtwp_opt_count_replies'
wp option delete 'alg_dtwp_opt_tab_priority'
wp option delete 'alg_dtwp_enqueue_comment_reply_on_product'
wp option delete 'alg_dtwp_opt_sc_discussions'
wp option delete 'alg_dtwp_opt_sc_admin'
wp option delete 'alg_dtwp_wp_list_comment_cb'
wp option delete 'alg_dtwp_opt_author_label'
wp option delete 'alg_dtwp_opt_v_owner_label'
wp option delete 'alg_dtwp_opt_author_label_color'
wp option delete 'alg_dtwp_opt_author_txt_color'
wp option delete 'alg_dtwp_opt_author_title'
wp option delete 'alg_dtwp_opt_v_owner_label_color'
wp option delete 'alg_dtwp_opt_v_owner_txt_color'
wp option delete 'alg_dtwp_opt_v_owner_label_icon'
wp option delete 'alg_dtwp_opt_v_owner_label_txt'
wp option delete 'alg_dtwp_opt_author_label_icon'
wp option delete 'alg_dtwp_opt_author_label_txt'
wp option delete 'alg_dtwp_icons_positioning'
wp option delete 'alg_dtwp_opt_label_tip_border_color'
wp option delete 'alg_dtwp_opt_label_tip_bkg_color'
wp option delete 'alg_dtwp_opt_label_tip_txt_color'
wp option delete 'alg_dtwp_font_awesome'
wp option delete 'alg_dtwp_unsubscribing_enabled'
wp option delete 'alg_dtwp_new_comment_email_author_label'
wp option delete 'alg_dtwp_manual_notifications_enabled'
wp option delete 'alg_dtwp_notify_comment_authors'
wp option delete 'alg_dtwp_remove_undesired_texts_from_notification'
wp option delete 'alg_dtwp_new_comment_email_replace_comments_anchor'
wp option delete 'alg_dtwp_fb_app_id'
wp option delete 'alg_dtwp_fb_autofill'
wp option delete 'alg_dtwp_fb_autofill_avatar'
wp option delete 'alg_dtwp_fb_autofill_btn_label'
wp option delete 'alg_dtwp_opt_support_label_color'
wp option delete 'alg_dtwp_opt_support_txt_color'
wp option delete 'alg_dtwp_opt_support_title'
wp option delete 'alg_dtwp_opt_support_label_icon'
wp option delete 'alg_dtwp_opt_support_label_txt'
wp option delete 'alg_dtwp_opt_support_my_account_tab'
wp option delete 'alg_dtwp_opt_support_product_metabox'
wp option delete 'alg_dtwp_fix_reviews_change'
wp option delete 'alg_dtwp_discussions_title_single'
wp option delete 'alg_dtwp_discussions_title_plural'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_dtwp_discussions_none'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtwp_guest_comment_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtwp_guest_comment_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtwp_guest_comment_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtwp_guest_comment_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtwp_guest_comment_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtwp_guest_comment_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtwp_guest_comment_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtwp_guest_comment_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtwp_guest_comment_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtwp_guest_comment_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtwp_guest_comment_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtwp_guest_comment_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_dtwp_comment_meta_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_dtwp_comment_meta_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_dtwp_comment_meta_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_dtwp_comment_meta_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dtwp_unsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dtwp_unsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dtwp_unsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dtwp_unsubscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_dtwp_support_reps_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_dtwp_support_reps_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_dtwp_support_reps_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_dtwp_support_reps_emails'"
