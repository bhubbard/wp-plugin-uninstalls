#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_EcomSurance'
wp option delete 'insurify_app_status'
wp option delete 'insurify_protection_toggle_default'
wp option delete 'insurify_protection_toggle_cartorcheckout'
wp option delete 'insurify_toggle_type'
wp option delete 'insurify_protection_title'
wp option delete 'insurify_protection_subtitle'
wp option delete 'insurify_protection_description'
wp option delete 'insurify_toggle_inline_css'
wp option delete 'insurify_storelogo'
wp option delete 'insurify_coverimage'
wp option delete 'insurify_in_progress_email_for_customer'
wp option delete 'insurify_reorder_email_for_customer'
wp option delete 'insurify_refund_email_for_customer'
wp option delete 'insurify_other_email_for_admin'
wp option delete 'insurify_claim_requested_email_for_customer'
wp option delete 'title'
wp option delete 'leftimagetitle'
wp option delete 'centerimagetitle'
wp option delete 'rightimagetitle'
wp option delete 'term'
wp option delete 'copyright'
wp option delete 'ecomsurance_popup_logo'
wp option delete 'popupbgimg'
wp option delete 'leftimage'
wp option delete 'centerimage'
wp option delete 'rightimage'
wp option delete 'insurify_claim_requested_email_for_admin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth_insurify_id_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth_insurify_id_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth_insurify_id_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth_insurify_id_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'claim-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'claim-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'claim-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'claim-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ec_insurance_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ec_insurance_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ec_insurance_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ec_insurance_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cart_minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cart_minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cart_minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cart_minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cart_maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cart_maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cart_maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cart_maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'surcharge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'surcharge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'surcharge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'surcharge'"
