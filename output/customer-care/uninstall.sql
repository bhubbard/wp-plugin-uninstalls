-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customer_care_CPT_ID', 'customer_care_settings', 'tagline_alteration_mode', 'customer_care_tagline_settings', 'data_export_ID', 'customer_care_running');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_care_maintenance_email_done', 'customer_care_payment_email_done', 'customer_care_maintenance_date', 'customer_care_payment_date', 'customer_accpets_news', 'customer_care_accomplished', 'customer_accpet_news');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_care_maintenance_email_done', 'customer_care_payment_email_done', 'customer_care_maintenance_date', 'customer_care_payment_date', 'customer_accpets_news', 'customer_care_accomplished', 'customer_accpet_news');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_care_maintenance_email_done', 'customer_care_payment_email_done', 'customer_care_maintenance_date', 'customer_care_payment_date', 'customer_accpets_news', 'customer_care_accomplished', 'customer_accpet_news');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_care_maintenance_email_done', 'customer_care_payment_email_done', 'customer_care_maintenance_date', 'customer_care_payment_date', 'customer_accpets_news', 'customer_care_accomplished', 'customer_accpet_news');

