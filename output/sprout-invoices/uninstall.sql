-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('si_do_activation_redirect', 'si_current_version', 'si_stripe_option', 'si_gtag_option', 'si_hash_migration_completed', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%tally';
DELETE FROM wp_options WHERE option_name LIKE 'si_messaging_for_%';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcodes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_invoice_access_hash', '_estimate_access_hash', 'time_invoice_id', 'expense_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_invoice_access_hash', '_estimate_access_hash', 'time_invoice_id', 'expense_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_invoice_access_hash', '_estimate_access_hash', 'time_invoice_id', 'expense_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_invoice_access_hash', '_estimate_access_hash', 'time_invoice_id', 'expense_invoice_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_est';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_est';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_est';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_est';

