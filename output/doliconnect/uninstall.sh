#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'doliboard_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'doliboard_email_%'"
wp option delete 'dolibarr_public_url'
wp option delete 'dolibarr_private_key'
wp option delete 'dolibarr_entity'
wp option delete 'doliconnect_cronjob_multisite'
wp option delete 'license_key_doliconnect-pro'
wp option delete 'dolicustsupp_can_register'
wp option delete 'dolibarr_b2bmode'
wp option delete 'doliconnectdisplayinvoice'
wp option delete 'doliconnectbeta'
wp option delete 'doliconnectfontawesome'
wp option delete 'doliconnectrestrict'
wp option delete 'dolicartproductgrid'
wp option delete 'dolicartsuppliergrid'
wp option delete 'doliconnect_facebook'
wp option delete 'doliconnect_google'
wp option delete 'doliaccount'
wp option delete 'doliDefaultclient'
wp option delete 'doliProductclient'
wp option delete 'doliaccountinfo'
wp option delete 'doliconnect_disablepro'
wp option delete 'doliconnect_cronjob'
wp option delete 'doliconnectrestrict_role'
wp option delete 'dolicart'
wp option delete 'dolitos'
wp option delete 'dolidonation'
wp option delete 'doliagenda'
wp option delete 'doliclassifieds'
wp option delete 'doliconnect_ipkiosk'
wp option delete 'dolishop'
wp option delete 'dolifaq'
wp option delete 'dolishipping'
wp option delete 'dolicartnewlist'
wp option delete 'dolicartlist'
wp option delete 'dolisupplier'
wp option delete 'dolicontact'
wp option delete 'doliconnect_facebook_key'
wp option delete 'doliconnect_facebook_secret'
wp option delete 'doliconnect_google_key'
wp option delete 'doliconnect_google_secret'
wp option delete 'doliconnect_twitter_key'
wp option delete 'doliconnect_twitter_secret'
wp option delete 'doliconnect_linkedin_key'
wp option delete 'doliconnect_linkedin_secret'
wp option delete 'doliconnect_twitter'
wp option delete 'doliconnect_linkedin'
wp option delete 'registration'
wp option delete 'secupress_active_submodule_move-login'
wp option delete 'doliconnect_login'
wp option delete 'doliloginmodal'
wp option delete 'doliconnect_mode'
wp option delete 'tz_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'doliconnect_delay_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'doliconnect_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doliboard_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doliboard_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doliboard_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doliboard_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%member_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%member_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%member_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%member_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'civility_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'civility_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'civility_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'civility_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optin1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optin1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optin1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optin1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'loginmailalert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'loginmailalert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'loginmailalert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'loginmailalert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doliproduct_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doliproduct_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doliproduct_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doliproduct_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doliproduct_productid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doliproduct_productid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doliproduct_productid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doliproduct_productid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_doliLock_dropdown_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_doliLock_dropdown_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_doliLock_dropdown_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_doliLock_dropdown_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_doliproduct_productid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_doliproduct_productid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_doliproduct_productid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_doliproduct_productid'"
