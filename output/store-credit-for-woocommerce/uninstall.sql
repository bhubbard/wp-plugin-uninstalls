-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pi_store_credit_auto_apply', 'pi_store_credit_email_subject', 'pi_store_credit_email_header', 'pi_store_credit_email_top_desc', 'pi_store_credit_email_bottom_desc', 'pi_store_credit_email_read_more_url', 'pi_store_credit_email_read_more', 'pi_store_credit_email_expiry_msg', 'pi_store_credit_enable_expiry_email', 'pi_store_credit_first_expiry_reminder_email', 'pi_store_credit_expiry_email_subject', 'pi_store_credit_expiry_email_header', 'pi_store_credit_expiry_email_top_desc', 'pi_store_credit_expiry_email_bottom_desc', 'pi_store_credit_expiry_email_read_more_url', 'pi_store_credit_expiry_email_read_more', 'pi_store_credit_expiry_email_expiry_msg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_email', 'coupon_amount', 'restrict_credit_amount_by', 'restricted_credit_amount', '_min_amount', '_max_amount', '_expiry_days', '_pi_options', 'discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_email', 'coupon_amount', 'restrict_credit_amount_by', 'restricted_credit_amount', '_min_amount', '_max_amount', '_expiry_days', '_pi_options', 'discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_email', 'coupon_amount', 'restrict_credit_amount_by', 'restricted_credit_amount', '_min_amount', '_max_amount', '_expiry_days', '_pi_options', 'discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_email', 'coupon_amount', 'restrict_credit_amount_by', 'restricted_credit_amount', '_min_amount', '_max_amount', '_expiry_days', '_pi_options', 'discount_type');

