#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpdws_date_first_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpdws_date_first_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpdws_date_first_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpdws_date_first_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpdws_date_first_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpdws_date_first_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpdws_date_first_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpdws_date_first_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fpdws_date_first_payment_calculated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fpdws_date_first_payment_calculated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fpdws_date_first_payment_calculated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fpdws_date_first_payment_calculated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_period'"
