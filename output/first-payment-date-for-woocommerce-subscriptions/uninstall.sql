-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fpdws_date_first_payment', '_fpdws_date_first_payment_type', '_fpdws_date_first_payment_calculated', '_subscription_trial_length', '_subscription_trial_period');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fpdws_date_first_payment', '_fpdws_date_first_payment_type', '_fpdws_date_first_payment_calculated', '_subscription_trial_length', '_subscription_trial_period');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fpdws_date_first_payment', '_fpdws_date_first_payment_type', '_fpdws_date_first_payment_calculated', '_subscription_trial_length', '_subscription_trial_period');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fpdws_date_first_payment', '_fpdws_date_first_payment_type', '_fpdws_date_first_payment_calculated', '_subscription_trial_length', '_subscription_trial_period');

