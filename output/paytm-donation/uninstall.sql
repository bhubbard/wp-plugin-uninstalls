-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paytm_merchant_id', 'paytm_donation_details_url', 'paytm_enable_address', 'paytm_user_field', 'isWebsiteAddedDonation', 'paytm_website', 'websiteOptionDonation', 'paytm_payment_environment', 'paytm_content', 'paytm_websiteOther', 'paytm_merchant_key');

