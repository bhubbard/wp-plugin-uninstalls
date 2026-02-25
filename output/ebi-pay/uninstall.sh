#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ebi_link_blocks_settings'
wp option delete 'vc_json_ebilink'
wp option delete 'config_installments_json_ebilink'
wp option delete 'site_key_ebilink'
wp option delete 'mid_ebilink'
wp option delete 'environment_dev_cyb_ebilink'
wp option delete 'jwt_ebilink'
wp option delete 'secret_key_ebilink'
wp option delete 'user_ebilink'
wp option delete 'password_ebilink'
wp option delete 'token_ebilink'
wp option delete 'name_enterprise_ebilink'
wp option delete 'currency_ebilink'
wp option delete 'activation_date_ebilink'
wp option delete 'creation_date_ebilink'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_card_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_card_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_card_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_card_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_card_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_card_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_card_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_card_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_card_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_card_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_card_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_card_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_card_cvc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_card_cvc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_card_cvc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_card_cvc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_card_vcq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_card_vcq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_card_vcq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_card_vcq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebi_pay_blocks_autoincrement_to_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebi_pay_blocks_autoincrement_to_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebi_pay_blocks_autoincrement_to_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebi_pay_blocks_autoincrement_to_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etn_ticket_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etn_ticket_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etn_ticket_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etn_ticket_price'"
