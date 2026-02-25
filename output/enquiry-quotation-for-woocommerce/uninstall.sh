#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_eqw_captcha'
wp option delete 'pi_ewq_do_activation_redirect'
wp option delete 'pi_eqw_enquiry_cart'
wp option delete 'pi_eqw_captcha_placeholder'
wp option delete 'pi_eqw_captcha_length'
wp option delete 'pi_eqw_captcha_characters'
wp option delete 'pi_eqw_email'
wp option delete 'pi_eqw_email_subject'
wp option delete 'pi_eqw_email_template'
wp option delete 'pi_enq_add_img_url'
wp option delete 'pi_eqw_email_disable_logo'
wp option delete 'pi_eqw_enable_cart'
wp option delete 'pi_eqw_cart_position'
wp option delete 'pi_eqw_hide_price'
wp option delete 'pi_eqw_redirect_to_enquiry_cart'
wp option delete 'pi_eqw_trouble_shoot_position'
wp option delete 'pisol_eqw_button_size'
wp option delete 'pisol_eqw_button_font_size'
wp option delete 'pisol_eqw_loop_button_size'
wp option delete 'pisol_eqw_loop_button_font_size'
wp option delete 'pi_eqw_enquiry_single_button_text'
wp option delete 'pi_eqw_enquiry_loop_button_text'
wp option delete 'pi_eqw_enquiry_loop'
wp option delete 'pi_eqw_enquiry_single'
wp option delete 'pi_eqw_enquiry_loop_bg_color'
wp option delete 'pi_eqw_enquiry_loop_text_color'
wp option delete 'pi_eqw_enquiry_single_bg_color'
wp option delete 'pi_eqw_enquiry_single_text_color'
wp option delete 'pi_eqw_enable_honeypot'
wp option delete 'pi_eqw_webhook_url'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'pi_eqw_show_message_as_row'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_products_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_products_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_products_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_products_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_products_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_products_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_products_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_products_id'"
