#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfwc_welcome_notice_dismissed'
wp option delete 'rfwc_ticket_prefix'
wp option delete 'rfwc_enable_skill_question'
wp option delete 'rfwc_enable_free_entry'
wp option delete 'rfwc_skill_question_pool'
wp option delete 'rfwc_show_shop_countdown'
wp option delete 'rfwc_show_countdown'
wp option delete 'rfwc_show_progress_bar'
wp option delete 'rfwc_show_prize_value'
wp option delete 'rfwc_frontend_accent_color'
wp option delete 'rfwc_version'
wp option delete 'rfwc_db_version'
wp option delete 'rfwc_flush_rewrite_rules'
wp option delete 'rfwc_ticket_badge_text'
wp option delete 'rfwc_ticket_footer_text'
wp option delete 'rfwc_ticket_primary_color'
wp option delete 'rfwc_enable_gift_purchase'
wp option delete 'rfwc_ticket_number_format'
wp option delete 'rfwc_free_entry_text'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'rfwc_qr_code_size'
wp option delete 'rfwc_default_selection_method'
wp option delete 'rfwc_auto_generate_on_payment'
wp option delete 'rfwc_ticket_start_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rfwc_ticket_meta_%'"
wp option delete 'rfwc_random_org_api_key'
wp option delete 'rfwc_email_admin_draw_failed'
wp option delete 'rfwc_email_admin_winner'
wp option delete 'rfwc_email_gift_notification'
wp option delete 'rfwc_email_prize_claimed'
wp option delete 'rfwc_email_ticket_confirmation'
wp option delete 'rfwc_email_winner_notification'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rfwc_admin_notice_%' OR option_name LIKE '_site_transient_rfwc_admin_notice_%'"

# Clear Cron Jobs
wp cron event delete 'rfwc_check_expired_raffles'
wp cron event delete 'rfwc_auto_draw_raffle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rfwc_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rfwc_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rfwc_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rfwc_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rfwc_ticket_prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rfwc_ticket_prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rfwc_ticket_prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rfwc_ticket_prefix'"
