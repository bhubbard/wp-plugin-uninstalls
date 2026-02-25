#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'discontinued_show_in_catalog'
wp option delete 'discontinued_greyscale_effect'
wp option delete 'discontinued_enable_custom_message'
wp option delete 'discontinued_global_message'
wp option delete 'discontinued_global_message_border_width'
wp option delete 'discontinued_global_message_border_style'
wp option delete 'discontinued_global_message_border_color'
wp option delete 'discontinued_global_message_border_radius'
wp option delete 'discontinued_global_text_color'
wp option delete 'discontinued_global_background_color'
wp option delete 'discontinued_restore_to_outofstock'
wp option delete 'excluded_categories'
wp option delete 'dpssw_latest_popup_sale_notice'
wp option delete 'dpssw_last_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_specific_messsage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_specific_messsage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_specific_messsage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_specific_messsage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_discontinued_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_discontinued_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_discontinued_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_discontinued_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discontinued_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discontinued_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discontinued_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discontinued_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_editor_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_editor_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_editor_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_editor_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpssw_rate_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpssw_rate_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpssw_rate_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpssw_rate_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpssw_notices_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpssw_notices_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpssw_notices_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpssw_notices_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related_product_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related_product_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related_product_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related_product_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_discontinued_messsage_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_discontinued_messsage_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_discontinued_messsage_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_discontinued_messsage_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_discontinued_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_discontinued_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_discontinued_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_discontinued_textarea'"
