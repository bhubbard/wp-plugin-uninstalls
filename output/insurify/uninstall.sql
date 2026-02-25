-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Activated_EcomSurance', 'insurify_app_status', 'insurify_protection_toggle_default', 'insurify_protection_toggle_cartorcheckout', 'insurify_toggle_type', 'insurify_protection_title', 'insurify_protection_subtitle', 'insurify_protection_description', 'insurify_toggle_inline_css', 'insurify_storelogo', 'insurify_coverimage', 'insurify_in_progress_email_for_customer', 'insurify_reorder_email_for_customer', 'insurify_refund_email_for_customer', 'insurify_other_email_for_admin', 'insurify_claim_requested_email_for_customer', 'title', 'leftimagetitle', 'centerimagetitle', 'rightimagetitle', 'term', 'copyright', 'ecomsurance_popup_logo', 'popupbgimg', 'leftimage', 'centerimage', 'rightimage', 'insurify_claim_requested_email_for_admin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('auth_insurify_id_token', 'claim-status', '_thankyou_action_done', 'ec_insurance_plan', 'cart_minimum_amount', 'cart_maximum_amount', 'surcharge');
DELETE FROM wp_usermeta WHERE meta_key IN ('auth_insurify_id_token', 'claim-status', '_thankyou_action_done', 'ec_insurance_plan', 'cart_minimum_amount', 'cart_maximum_amount', 'surcharge');
DELETE FROM wp_termmeta WHERE meta_key IN ('auth_insurify_id_token', 'claim-status', '_thankyou_action_done', 'ec_insurance_plan', 'cart_minimum_amount', 'cart_maximum_amount', 'surcharge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('auth_insurify_id_token', 'claim-status', '_thankyou_action_done', 'ec_insurance_plan', 'cart_minimum_amount', 'cart_maximum_amount', 'surcharge');

