#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seatkit_currency_symbol'
wp option delete 'seatkit_company_name'
wp option delete 'seatkit_delete_on_uninstall'
wp option delete 'seatkit_admin_email_from'
wp option delete 'seatkit_payment_mode'
wp option delete 'seatkit_enabled_gateways'
wp option delete 'seatkit_default_gateway'
wp option delete 'seatkit_razorpay_key'
wp option delete 'seatkit_razorpay_secret'
wp option delete 'seatkit_stripe_publishable'
wp option delete 'seatkit_stripe_secret'
wp option delete 'seatkit_cancel_hours'
wp option delete 'seatkit_refund_deduction'
wp option delete 'seatkit_ticket_company'
wp option delete 'seatkit_ticket_footer'
wp option delete 'seatkit_reservation_expiry'
wp option delete 'seatkit_reservation_percent'
wp option delete 'sk_ticket_footer'
wp option delete 'sk_ticket_color'
wp option delete 'sk_ticket_company'
wp option delete 'seatkit_version'
wp option delete 'seatkit_lock_expiry_minutes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_seatkit_cancel_otp_%' OR option_name LIKE '_site_transient_seatkit_cancel_otp_%'"

# Clear Cron Jobs
wp cron event delete 'seatkit_cron_cleanup_locks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seatkit_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seatkit_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seatkit_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seatkit_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seatkit_otp_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seatkit_otp_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seatkit_otp_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seatkit_otp_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
