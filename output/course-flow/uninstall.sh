#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'courseflow_course_button_text'
wp option delete 'courseflow_button_font_family'
wp option delete 'courseflow_button_font_size'
wp option delete 'courseflow_button_text_color'
wp option delete 'courseflow_button_background_color'
wp option delete 'courseflow_button_border_color'
wp option delete 'courseflow_button_height'
wp option delete 'courseflow_button_width'
wp option delete 'courseflow_button_border_radius'
wp option delete 'courseflow_button_border_width'
wp option delete 'courseflow_button_border_style'
wp option delete 'courseflow_button_shadow_x'
wp option delete 'courseflow_button_shadow_y'
wp option delete 'courseflow_button_shadow_blur'
wp option delete 'courseflow_button_shadow_spread'
wp option delete 'courseflow_button_shadow_color'
wp option delete 'courseflow_button_background_color_hover'
wp option delete 'courseflow_button_text_color_hover'
wp option delete 'courseflow_image_button_url'
wp option delete 'courseflow_image_button_alt'
wp option delete 'courseflow_image_button_width'
wp option delete 'courseflow_image_button_height'
wp option delete 'courseflow_image_button_original_size'
wp option delete 'courseflow_image_button_maintain_aspect_ratio'
wp option delete 'courseflow_stripe_publishable_key'
wp option delete 'courseflow_stripe_secret_key'
wp option delete 'courseflow_stripe_endpoint_secret'
wp option delete 'courseflow_allow_url_collection'
wp option delete 'courseflow_auto_create_account'
wp option delete 'courseflow_success_page_id'
wp option delete 'courseflow_webhook_url'
wp option delete 'courseflow_default_currency'
wp option delete 'courseflow_lp_hook_bridge'
wp option delete 'learndash_settings_payments_general'
wp option delete 'courseflow_processed_transactions'
wp option delete 'courseflow_plugin_language'
wp option delete 'courseflow_processed_sessions'

# Delete Transients
wp transient delete 'courseflow_all_transactions'
wp transient delete 'courseflow_active_payment_methods'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ld_transaction_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ld_transaction_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ld_transaction_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ld_transaction_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ld_payment_processor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ld_payment_processor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ld_payment_processor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ld_payment_processor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tutor_course_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tutor_course_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tutor_course_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tutor_course_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tutor_course_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tutor_course_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tutor_course_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tutor_course_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'courseflow_transaction_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'courseflow_transaction_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'courseflow_transaction_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'courseflow_transaction_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_course_enrolled_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_course_enrolled_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_course_enrolled_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_course_enrolled_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_enrolled_user_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_enrolled_user_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_enrolled_user_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_enrolled_user_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_order_%'"
