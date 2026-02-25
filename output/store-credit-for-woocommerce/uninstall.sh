#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pi_store_credit_auto_apply'
wp option delete 'pi_store_credit_email_subject'
wp option delete 'pi_store_credit_email_header'
wp option delete 'pi_store_credit_email_top_desc'
wp option delete 'pi_store_credit_email_bottom_desc'
wp option delete 'pi_store_credit_email_read_more_url'
wp option delete 'pi_store_credit_email_read_more'
wp option delete 'pi_store_credit_email_expiry_msg'
wp option delete 'pi_store_credit_enable_expiry_email'
wp option delete 'pi_store_credit_first_expiry_reminder_email'
wp option delete 'pi_store_credit_expiry_email_subject'
wp option delete 'pi_store_credit_expiry_email_header'
wp option delete 'pi_store_credit_expiry_email_top_desc'
wp option delete 'pi_store_credit_expiry_email_bottom_desc'
wp option delete 'pi_store_credit_expiry_email_read_more_url'
wp option delete 'pi_store_credit_expiry_email_read_more'
wp option delete 'pi_store_credit_expiry_email_expiry_msg'

# Clear Cron Jobs
wp cron event delete 'pi_delete_report_file_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restrict_credit_amount_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restrict_credit_amount_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restrict_credit_amount_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restrict_credit_amount_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restricted_credit_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restricted_credit_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restricted_credit_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restricted_credit_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiry_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiry_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiry_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiry_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pi_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pi_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pi_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pi_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
