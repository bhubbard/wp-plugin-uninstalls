#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_cord_do_activation_redirect'
wp option delete 'pi_corw_do_activation_redirect'
wp option delete 'pi_corw_enable_wallet_refund'
wp option delete 'pi_corw_user_choice_for_wallet_refund'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'pi_corw_make_reason_required'
wp option delete 'pi_corw_reorder_go_to_cart_button_text'
wp option delete 'pi_corw_reorder_go_to_checkout_button_text'
wp option delete 'pi_corw_reorder_button_background_color'
wp option delete 'pi_corw_reorder_button_text_color'
wp option delete 'pi_corw_reorder_error_background_color'
wp option delete 'pi_corw_reorder_success_background_color'
wp option delete 'pi_corw_disable_order_completion_email'
wp option delete 'pi_corw_give_refund_in_wallet'
wp option delete 'pi_corw_show_reorder_on_view_order_page'
wp option delete 'pi_corw_reorder_button_text'
wp option delete 'pi_corw_reorder_replace_cart_button_text'
wp option delete 'pi_corw_reorder_merge_cart_button_text'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_footer_text'

