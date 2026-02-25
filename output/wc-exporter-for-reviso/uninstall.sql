-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcefr-customers-role', 'wcefr_company_invoice', 'wcefr_private_invoice', 'wcefr_private', 'wcefr_cf_mandatory', 'wcefr_fields_check', 'billing_wcefr_pec_active', 'billing_wcefr_pa_code_active', 'billing_wcefr_piva_active', 'billing_wcefr_cf_active', 'wcefr-suppliers-role', 'wcefr-agt', 'wcefr_only_italy', 'wcefr_cf_only_italy', 'wcefr-number-series-prefix', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%-group';
DELETE FROM wp_options WHERE option_name LIKE '%-role';

