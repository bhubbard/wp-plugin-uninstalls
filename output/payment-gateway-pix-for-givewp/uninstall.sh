#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lkn_payment_pix_delete_old_logs_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgpf_payment_confirmed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgpf_payment_confirmed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgpf_payment_confirmed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgpf_payment_confirmed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_purchase_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_purchase_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_purchase_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_purchase_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_form_id'"
