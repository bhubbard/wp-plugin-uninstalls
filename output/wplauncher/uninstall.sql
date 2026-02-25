-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplauncher_company_name', 'wplauncher_logo', 'wplauncher_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_currency';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cost';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cost';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cost';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cost';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_budget';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_budget';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_budget';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_budget';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_hourly_estimate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_hourly_estimate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_hourly_estimate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_hourly_estimate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cost_estimate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cost_estimate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cost_estimate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cost_estimate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_response';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_response';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_response';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_response';

